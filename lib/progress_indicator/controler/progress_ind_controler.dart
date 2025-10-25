import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ProgressController extends GetxController {
  final int totalSteps = 4;
  var currentStep = 1.obs;
  final PageController pageController = PageController();

  void nextStep() {
    if (currentStep < totalSteps) {
      currentStep++;
      pageController.nextPage(
          duration: const Duration(milliseconds: 400), curve: Curves.ease);
    }
  }

  void previousStep() {
    if (currentStep > 1) {
      currentStep--;
      pageController.previousPage(
          duration: const Duration(milliseconds: 400), curve: Curves.ease);
    }
  }

  void jumpToStep(int step) {
    if (step >= 1 && step <= totalSteps) {
      currentStep.value = step;
      pageController.jumpToPage(step - 1);
    }
  }
}
