import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_placeholder/model/user_model.dart';
import 'package:mobx_placeholder/services/http_services.dart';

part 'counter.g.dart';

class Counter = _Counter with _$Counter;

abstract class _Counter with Store {
  @observable
  ObservableList<UserModel> userList = ObservableList<UserModel>.of([]);
  @observable
  int value = 0;
  @observable
  bool showIndicator = false;
  @observable
  List<UserModel>? userModel;

  @observable
  ObservableList<String> toDoList = ObservableList<String>.of([
    "Complete Work",
    "shutdown system",
    "Report manager",
    "Mark Attendance",
    "Go Home",
  ]);

  @action
  void increment() {
    showIndicator = true;
  }

  @action
  Future<dynamic> getAllUsers() async {
    showIndicator = true;
    userModel = await HttpServices.getAllUsers();
    // userList = ObservableList<UserModel>.of(userModel!);
    /// try to call add function so that list can detect change
    userModel!.forEach((element) {
      userList.add(element);
    });
    print(userList);
    showIndicator = false;
  }

  @action
  void updateName({required String name}) {
    userList[0].name = name;
    userList.removeLast();
  }
}
