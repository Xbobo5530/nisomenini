import 'package:flutter/material.dart';
import 'package:nisomenini/src/models/main_model.dart';
import 'package:nisomenini/src/pages/home_page.dart';
import 'package:nisomenini/src/utils/constants.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {
  final model = MainModel();

  // await model.getPackageInfo();

  runApp(MyApp(
    model: model,
  ));
}

class MyApp extends StatelessWidget {
  final MainModel model;

  const MyApp({
    Key key,
    @required this.model,
  })  : assert(model != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: model,
      child: MaterialApp(
        theme: ThemeData(
            primaryColor: COLOR_PRIMARY,
            primaryColorLight: COLOR_PRIMARY_LIGHT,
            primaryColorDark: COLOR_PRIMARY_DARK),
        home: HomePage(),
      ),
    );
  }
}
