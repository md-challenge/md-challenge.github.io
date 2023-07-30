import 'package:flutter/widgets.dart';

class AppProvider extends ChangeNotifier {
  final int totalProblemCount = 2;
  int problemNumber = 0;
  bool divOverlayBool = false;
  Color divColor = const Color.fromARGB(255, 0, 0, 0);
  int divCountX = 1;
  int divCountY = 2;
  bool dispAnsBool = false;
  int? procSelection = 2;
  int? q2Selection;
  bool darkBool = false;

  void incrementProblemNumber() {
    if (problemNumber < totalProblemCount - 1) {
      problemNumber++;
      dispAnsBool = false;
      divOverlayBool = false;
      procSelection = 2;
      q2Selection = null;
    }
    notifyListeners();
  }

  void assignProblemNumber(int number) {
    problemNumber = number;
    dispAnsBool = false;
    divOverlayBool = false;
    procSelection = 2;
    q2Selection = null;
    notifyListeners();
  }

  void allowDivOverlayBool() {
    divOverlayBool = true;
    notifyListeners();
  }

  void resetDivOverlayBool() {
    divOverlayBool = false;
    notifyListeners();
  }

  void setDivOverlayColor() {
    divColor = const Color.fromARGB(255, 30, 113, 5);
    notifyListeners();
  }

  void allowDispAnsBool() {
    dispAnsBool = true;
    notifyListeners();
  }

  void resetDispAnsBool() {
    dispAnsBool = false;
  }

  void setDivCounts(int countX, int countY) {
    divCountX = countX;
    divCountY = countY;
    notifyListeners();
  }

  void setProcSelection(int? procCount) {
    procSelection = procCount;
    divOverlayBool = false;
    q2Selection = null;
    notifyListeners();
  }

  void setQ2Selection(int? q2RadioSelection) {
    q2Selection = q2RadioSelection;
    divOverlayBool = true;
    notifyListeners();
  }

  void switchDarkMode() {
    darkBool = !darkBool;
    notifyListeners();
  }
}
