import 'package:mtgjson_converter_dart/all_printings.dart' as all_printings;
import 'package:mtgjson_converter_dart/help.dart' as help;

void main(List<String> arguments) {
  if (arguments.length >= 2) {
    if (arguments[0] == "AllPrintings") {
      if (arguments[1] == "info") {
        return all_printings.info();
      }
      else if (arguments[1] == "magic_life_wheel_all_cards") {
        return all_printings.magicLifeWheelAllCards();
      }
    }
  }

  help.helpMessage();
}
