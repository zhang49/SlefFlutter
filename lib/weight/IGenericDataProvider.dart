import 'package:flutter/material.dart';

class IGenericDataProvider<T> extends InheritedWidget {
  final T data;

  IGenericDataProvider({Key key, Widget child, this.data})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(IGenericDataProvider oldWidget) {
    return data != oldWidget.data;
  }

  static T of<T>(BuildContext context) {
    var idgp = (context.inheritFromWidgetOfExactType(
        IGenericDataProvider<T>().runtimeType) as IGenericDataProvider<T>);
    return idgp?.data;
  }
}
