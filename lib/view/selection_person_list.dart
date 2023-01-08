import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kmphi_practical_task1/view/selected_person_list.dart';

import '../controller/selection_person_controller.dart';

class SecondTskScreen extends StatelessWidget {
  SecondTskScreen({Key? key}) : super(key: key);

  final SecondTaskController _controller = Get.put(SecondTaskController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
            () => Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _controller.list123.length,
                itemBuilder: (context, index) {
                  return Obx(
                        () => CheckboxListTile(
                      activeColor: Colors.teal,
                      title: Text(_controller.list123[index].name ?? ''),
                      value: _controller.list123[index].isLoad.value,
                      onChanged: (value) {
                        value == true
                            ? _controller.selectedPersonList
                            .add(_controller.list123[index])
                            : _controller.selectedPersonList
                            .remove(_controller.list123[index]);
                        _controller.list123[index].isLoad.value = value!;
                        print(_controller.selectedPersonList.toString());
                      },
                    ),
                  );
                },
              ),
            ),
            MaterialButton(
              color: Colors.black,
              child: const Text(
                'Submit',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: ()async {
                await _controller.listFunction(_controller.selectedPersonList.value);
                // print(_controller.selectedPersonList.length);
                Get.to( PersonList());
              },
            ),
          ],
        ),
      ),
    );
  }
}
