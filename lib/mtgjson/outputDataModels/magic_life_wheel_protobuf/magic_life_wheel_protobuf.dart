import 'dart:io';
import 'package:http/http.dart';
import 'package:image/image.dart';
import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/all_sets.dart';
import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/card_set.dart';
import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/set_list_all_sets.dart';
import 'package:mtgjson_converter_dart/mtgjson/outputDataModels/magic_life_wheel_protobuf/generated/all_set_cards.pb.dart';
import 'package:mtgjson_converter_dart/mtgjson/outputDataModels/magic_life_wheel_protobuf/card_set_searchable.dart';
import 'package:mtgjson_converter_dart/mtgjson/outputDataModels/magic_life_wheel_protobuf/generated/card_set.pb.dart';
import 'package:mtgjson_converter_dart/mtgjson/outputDataModels/magic_life_wheel_protobuf/generated/set.pb.dart';
import 'package:mtgjson_converter_dart/mtgjson/outputDataModels/magic_life_wheel_protobuf/generated/sets.pb.dart';

String _getDate() {
  var now = DateTime.now();
  return "${now.year}${now.month.toString().padLeft(2, '0')}${now.day.toString().padLeft(2, '0')}";
}

Future<Image?> getImage(MagicLifeWheelProtobufCardSet? card) async {
  String? id = (card == null || !card.hasScryfallId()) ? null : card.scryfallId;
  if (id == null) {
    return null;
  }
  String fileFace = 'front';
  String dir1 = id[0];
  String dir2 = id[1];
  var url = 'https://cards.scryfall.io/art_crop/$fileFace/$dir1/$dir2/$id.jpg';
  var response = await get(Uri.parse(url));
  return response.statusCode == 200 ? decodeJpg(response.bodyBytes) : null;
}

Color getImageAreaAverageColor(Image image, int x1, int y1, int x2, int y2) {
  num red = 0;
  num green = 0;
  num blue = 0;
  int numPixels = 0;

  for (int y = y1; y < image.height && y < y2; y++) {
    for (int x = x1; x < image.width && x < x2; x++) {
      var pixel = image.getPixel(x, y);

      numPixels++;
      red += pixel.r;
      green += pixel.g;
      blue += pixel.b;
    }
  }

  return ColorRgba8(
    red ~/ numPixels,
    green ~/ numPixels,
    blue ~/ numPixels,
    255,
  );
}

Future magicLifeWheelAllCards(AllSets allSets) async {
  // load previous data
  var lastAllCardDataFile = File("./last_all_cards.bin");
  MagicLifeWheelProtobufAllSetCards? lastAllCardData;
  Map<String, MagicLifeWheelProtobufCardSet>? lastCardDataByUuid;
  if (await lastAllCardDataFile.exists()) {
    stdout.write("Loading old card data...\n");
    lastAllCardData = MagicLifeWheelProtobufAllSetCards.fromBuffer(
      await lastAllCardDataFile.readAsBytes(),
    );
    lastCardDataByUuid = {};
    for (var card in lastAllCardData.data) {
      lastCardDataByUuid[card.uuid] = card;
    }
  }

  // filter eligible cards
  stdout.write("Filtering cards...\n");
  List<CardSet> cards = [];
  for (var set in allSets.data.values) {
    for (var card in set.cards) {
      if (card.isOnlineOnly != true && card.language == "English") {
        cards.add(card);
      }
    }
  }

  // generate base output
  stdout.write("Generating base output...\n");
  var outputDataModel = MagicLifeWheelProtobufAllSetCards(
    data: cards.map(MagicLifeWheelProtobufCardSetSearchable.build).toList(),
    buildDate: _getDate(),
  );

  // populate artColors from scryfall images
  List<MagicLifeWheelProtobufCardSet> missingArtColors = [];
  stdout.write("Populating artColors from the last data version\n");
  for (var card in outputDataModel.data) {
    var lastCard = lastCardDataByUuid == null
        ? null
        : lastCardDataByUuid[card.uuid];
    var lastData = lastCard?.artColors.toList();
    if (lastData != null && lastData.length == 12) {
      card.artColors.clear();
      card.artColors.addAll(lastData);
    } else {
      missingArtColors.add(card);
    }
  }
  if (missingArtColors.isNotEmpty) {
    stdout.write(
      "Populating remaining artColors from scryfall images. (0 / ${missingArtColors.length})",
    );

    var doneTasks = 0;

    // get colors task
    Future getArtColors(MagicLifeWheelProtobufCardSet card) async {
      var image = await getImage(card);
      if (image == null || image.width < 30 || image.height < 30) {
        return;
      }
      List<int> data = [];
      var numX = 4;
      var numY = 3;
      for (var yi = 0; yi < numY; yi++) {
        for (var xi = 0; xi < numX; xi++) {
          final x1 = (image.width ~/ numX) * xi;
          final x2 = (image.width ~/ numX) * (xi + 1);
          final y1 = (image.height ~/ numY) * yi;
          final y2 = (image.height ~/ numY) * (yi + 1);
          final color = getImageAreaAverageColor(image, x1, y1, x2, y2);
          final rgb32 =
              (color.r.toInt() << 16) |
              (color.g.toInt() << 8) |
              color.b.toInt();
          data.add(rgb32);
        }
      }
      if (data.length != 12) {
        return;
      }
      card.artColors.clear();
      card.artColors.addAll(data);
      doneTasks++;
      stdout.write(
        "\rPopulating remaining artColors from scryfall images. ($doneTasks / ${missingArtColors.length})",
      );
    }

    // run tasks in parallel
    var parallelTasks = 500;
    final iterator = missingArtColors.iterator;
    Future<void> worker() async {
      while (iterator.moveNext()) {
        await getArtColors(iterator.current);
      }
    }

    await Future.wait(List.generate(parallelTasks, (_) => worker()));

    stdout.write("\n");
  }

  // write output
  var outputFileJson = File("./all_cards.json");
  var outputFileBinary = File("./all_cards.bin");
  stdout.write("Writing output...\n");
  await outputFileJson.writeAsString(outputDataModel.writeToJson());
  await outputFileBinary.writeAsBytes(outputDataModel.writeToBuffer());
  stdout.write("Done!\n");
}

void magicLifeWheelSetList(SetListAllSets allSets) {
  var outputFileJson = File("./set_list.json");
  var outputFileBinary = File("./set_list.bin");

  var outputDataModel = SetList(
    sets: allSets.data
        .map(
          (e) => SetListSet(
            code: e.code,
            name: e.name,
            releaseDate: e.releaseDate,
          ),
        )
        .toList(),
    buildDate: _getDate(),
  );

  outputFileJson.writeAsStringSync(outputDataModel.writeToJson());
  outputFileBinary.writeAsBytes(outputDataModel.writeToBuffer());
}
