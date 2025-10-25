import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_prectice/progress_indicator/controler/progress_ind_controler.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    final ProgressController controller = Get.find();

    return Obx(() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(controller.totalSteps, (index) {
          final bool isActive = index < controller.currentStep.value;
          return AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            margin: const EdgeInsets.symmetric(horizontal: 8),
            height: 8,
            width: 50,
            decoration: BoxDecoration(
              color: isActive ? Colors.blue : Colors.blue.withOpacity(0.2),
              borderRadius: BorderRadius.circular(4),
            ),
          );
        }),
      );
    });
  }
}
