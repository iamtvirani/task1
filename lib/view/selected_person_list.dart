import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/selection_person_controller.dart';

class PersonList extends StatelessWidget {
  PersonList({Key? key}) : super(key: key);
  final SecondTaskController _secondTaskController =
  Get.put(SecondTaskController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          foregroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: _secondTaskController.personList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    index == 0
                        ? Container(
                      height: 5,
                      width: double.infinity,
                      color: Colors.black,
                    )
                        : const SizedBox(),
                    Center(
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            physics: const ClampingScrollPhysics(),
                            itemCount:
                            _secondTaskController.personList[index].length,
                            itemBuilder: (context, i) {
                              return Column(
                                children: [
                                  Center(
                                    child: Text(
                                        _secondTaskController.personList[index][i].name ??
                                            ''),
                                  ),
                                  const SizedBox(height: 10,)
                                ],
                              );
                            })),
                    Container(
                      height: 5,
                      width: double.infinity,
                      color: Colors.black,
                    )
                  ],
                );
              }),
        ));
  }
}
