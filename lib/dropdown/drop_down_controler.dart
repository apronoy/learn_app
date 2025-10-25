import 'package:get/get.dart';

class DropdownController extends GetxController {
  // Holds the selected option
  var selectedOption = ''.obs; // empty means nothing selected yet

  // List of dropdown items
  final List<String> options = [
    'Option 1',
    'Option 2',
    'Option 3',
  ];

  void setOption(String value) {
    selectedOption.value = value;
  }
}
