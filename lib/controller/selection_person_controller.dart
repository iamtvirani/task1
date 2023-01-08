import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../model/selection_person_model.dart';

class SecondTaskController extends GetxController {
  RxList<Person> list123 = [
    Person(name: 'Mayank'),
    Person(name: 'Mayank1'),
    Person(name: 'Mayank2'),
    Person(name: 'Mayank3'),
    Person(name: 'Mayank4'),
    Person(name: 'Mayank5'),
    Person(name: 'Mayank6'),
    Person(name: 'Mayank7'),
  ].obs;

  RxList<Person> selectedPersonList = <Person>[].obs;
  List<List<Person>> personList = [];
  List<Person> personList1 = [];

  listFunction(List<Person> list) {
    personList1.clear();
    personList.clear();
    personList1.addAll(list);
    for (int i = 0; i < list.length; i++) {
      personList1 = shiftListItem(personList1);
      personList.add(personList1);
    }
    update();
  }

  List<Person> shiftListItem(List<Person> list){
    final List<Person> newList = [];
    newList.addAll(list);
    newList.removeAt(0);
    newList.add(list[0]);
    return newList;
  }
}
