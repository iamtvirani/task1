import 'package:get/get.dart';

class Person {
  String? name;
  RxBool isLoad = false.obs;

  Person({this.name});
}
