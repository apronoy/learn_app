import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_prectice/progress_indicator/controler/progress_ind_controler.dart';
import 'package:work_prectice/progress_indicator/view/page1.dart';
import 'package:work_prectice/progress_indicator/view/page2.dart';
import 'package:work_prectice/progress_indicator/view/page3.dart';
import 'package:work_prectice/progress_indicator/view/page4.dart';
import 'progress_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ProgressController controller = Get.find();

    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 40),
          const ProgressBar(),
          const SizedBox(height: 20),
          Expanded(
            child: PageView(
              controller: controller.pageController,
              physics:
                  const NeverScrollableScrollPhysics(), // control navigation via buttons
              onPageChanged: (index) {
                controller.currentStep.value = index + 1;
              },
              children: const [
                Step1Page(),
                Step2Page(),
                Step3Page(),
                Step4Page(),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (controller.currentStep.value > 1)
                    ElevatedButton(
                      onPressed: controller.previousStep,
                      child: const Text('Previous'),
                    ),
                  const SizedBox(width: 20),
                  if (controller.currentStep.value < controller.totalSteps)
                    ElevatedButton(
                      onPressed: controller.nextStep,
                      child: const Text('Next'),
                    )
                  else
                    ElevatedButton(
                      onPressed: () =>
                          Get.snackbar('Done', 'All steps completed!'),
                      child: const Text('Finish'),
                    ),
                ],
              )),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
