import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_prectice/dropdown/drop_down_controler.dart';
    

class DropdownPage extends StatelessWidget {
  const DropdownPage({super.key});

  @override
  Widget build(BuildContext context) {
    final DropdownController controller = Get.find();

    return Scaffold(
   
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Obx(() => DropdownButton<String>(
                    isExpanded: true,
                    value: controller.selectedOption.value == ''
                        ? null
                        : controller.selectedOption.value,
                    hint: const Text('Select Option'),
                    underline: const SizedBox(),
                    items: controller.options
                        .map((item) => DropdownMenuItem(
                              value: item,
                              child: Text(item),
                            ))
                        .toList(),
                    onChanged: (value) {
                      if (value != null) controller.setOption(value);
                    },
                  )),
            ),
            const SizedBox(height: 20),
            Obx(() => Text(
                  controller.selectedOption.value == ''
                      ? 'No option selected'
                      : 'You selected: ${controller.selectedOption.value}',
                  style: const TextStyle(fontSize: 16),
                )),
      
           
          ],
        ),
      ),
    );
  }
}
