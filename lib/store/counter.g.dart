// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Counter on _Counter, Store {
  final _$userListAtom = Atom(name: '_Counter.userList');

  @override
  ObservableList<UserModel> get userList {
    _$userListAtom.reportRead();
    return super.userList;
  }

  @override
  set userList(ObservableList<UserModel> value) {
    _$userListAtom.reportWrite(value, super.userList, () {
      super.userList = value;
    });
  }

  final _$valueAtom = Atom(name: '_Counter.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$showIndicatorAtom = Atom(name: '_Counter.showIndicator');

  @override
  bool get showIndicator {
    _$showIndicatorAtom.reportRead();
    return super.showIndicator;
  }

  @override
  set showIndicator(bool value) {
    _$showIndicatorAtom.reportWrite(value, super.showIndicator, () {
      super.showIndicator = value;
    });
  }

  final _$userModelAtom = Atom(name: '_Counter.userModel');

  @override
  List<UserModel>? get userModel {
    _$userModelAtom.reportRead();
    return super.userModel;
  }

  @override
  set userModel(List<UserModel>? value) {
    _$userModelAtom.reportWrite(value, super.userModel, () {
      super.userModel = value;
    });
  }

  final _$toDoListAtom = Atom(name: '_Counter.toDoList');

  @override
  ObservableList<String> get toDoList {
    _$toDoListAtom.reportRead();
    return super.toDoList;
  }

  @override
  set toDoList(ObservableList<String> value) {
    _$toDoListAtom.reportWrite(value, super.toDoList, () {
      super.toDoList = value;
    });
  }

  final _$getAllUsersAsyncAction = AsyncAction('_Counter.getAllUsers');

  @override
  Future<dynamic> getAllUsers() {
    return _$getAllUsersAsyncAction.run(() => super.getAllUsers());
  }

  final _$_CounterActionController = ActionController(name: '_Counter');

  @override
  void increment() {
    final _$actionInfo =
        _$_CounterActionController.startAction(name: '_Counter.increment');
    try {
      return super.increment();
    } finally {
      _$_CounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateName({required String name}) {
    final _$actionInfo =
        _$_CounterActionController.startAction(name: '_Counter.updateName');
    try {
      return super.updateName(name: name);
    } finally {
      _$_CounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
userList: ${userList},
value: ${value},
showIndicator: ${showIndicator},
userModel: ${userModel},
toDoList: ${toDoList}
    ''';
  }
}
