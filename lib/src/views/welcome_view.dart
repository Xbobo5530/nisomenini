import 'package:flutter/material.dart';
import 'package:nisomenini/src/utils/strings.dart';

class WelcomeView extends StatelessWidget {
  final int agreementStatus;

  const WelcomeView({Key key, this.agreementStatus}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Center(
              child: ListTile(
            title: Text(
              welcomeText,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40),
            ),
            subtitle: Text(
              appDescText,
              textAlign: TextAlign.center,
            ),
          )),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(tandabuiText,
              style: TextStyle(fontSize: 10, color: Colors.white70)),
        )
      ],
    );
  }
}
