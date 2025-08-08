import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/card_set.dart';
import 'package:mtgjson_converter_dart/mtgjson/outputDataModels/magic_life_wheel_protobuf/card_set.pb.dart';
import 'package:string_normalizer/string_normalizer.dart';

abstract final class MagicLifeWheelProtobufCardSetSearchable {
  static MagicLifeWheelProtobufCardSet build(CardSet cardSet) {
    var cardSearchString = filterStringForSearch(cardSet.name);
    var cardSearchStringWords = cardSearchString.split(' ');
    String? cardSearchStringAlt;
    List<String>? cardSearchStringWordsAlt;
    if (cardSet.flavorName != null) {
      cardSearchStringAlt = filterStringForSearch(cardSet.flavorName!);
      cardSearchStringWordsAlt = cardSearchStringAlt.split(' ');
    }

    return MagicLifeWheelProtobufCardSet(
      // props
      artist: cardSet.artist,
      scryfallId: cardSet.identifiers.scryfallId,
      name: cardSet.name,
      setCode: cardSet.setCode,
      uuid: cardSet.uuid,
      commander: (cardSet.leadershipSkills?.commander ?? false) ? true : null,
      text: cardSet.types.contains("Plane") ? cardSet.text : null,
      flavorName: cardSet.flavorName,
      isFunny: cardSet.isFunny == true ? true : null,
      // search
      cardSearchString: cardSearchString,
      cardSearchStringAlt: cardSearchStringAlt,
      cardSearchStringWords: cardSearchStringWords,
      cardSearchStringWordsAlt: cardSearchStringWordsAlt,
      // flags
      keywordPartner: (cardSet.keywords?.contains("Partner") ?? false) ? true : null,
      keywordFriendsForever: (cardSet.keywords?.contains("Friends forever") ?? false) ? true : null,
      keywordDoctorsCompanion: (cardSet.keywords?.contains("Doctor's companion") ?? false) ? true : null,
      keywordChooseBackground: (cardSet.keywords?.contains("Choose a background") ?? false) ? true : null,
      subtypeTimeLordDoctor:
          (cardSet.subtypes.length == 2 && cardSet.subtypes[0] == "Time Lord" && cardSet.subtypes[1] == "Doctor")
              ? true
              : null,
      subtypeBackground: cardSet.subtypes.contains("Background") ? true : null,
      typePlane: cardSet.types.contains("Plane") ? true : null,
    );
  }

  static RegExp cardSearchStringFilterEmptyRegex = RegExp('[\']');
  static RegExp cardSearchStringFilterSpaceRegex = RegExp('[-,. ]+');

  static String filterStringForSearch(String str) {
    str = str.toLowerCase().normalize();
    str = str.replaceAll(cardSearchStringFilterEmptyRegex, '');
    str = str.replaceAll(cardSearchStringFilterSpaceRegex, ' ');
    return str;
  }
}
