import 'package:democracy_app_sample/pages/text_screen/text_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final controller = Get.find<TextController>();

class TextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return Scaffold(
          appBar: AppBar(
            title: Text('Getx Text Fields Example'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // String newText = controller.textList.isEmpty
                    //     ? 'First Text Field'
                    //     : 'Text Field ${controller.textList.length + 1}';
                    controller.addTextField();
                    // Get.back();
                  },
                  child: Text('Add Text Field'),
                ),
                SizedBox(height: 16),
                Expanded(
                  child: ListView.builder(
                    itemCount: controller.textList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: TextEditingController(
                              text: controller.textList[index]),
                          decoration: InputDecoration(
                            hintText: 'Option ${index + 1}',
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
