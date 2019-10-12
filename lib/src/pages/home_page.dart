import 'package:flutter/material.dart';
import 'package:nisomenini/src/models/main_model.dart';
import 'package:nisomenini/src/utils/constants.dart';
import 'package:nisomenini/src/views/welcome_view.dart';
import 'package:scoped_model/scoped_model.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title:
      // Text('Nisomenini')
      // // ScopedModelDescendant<MainModel>(builder: (context, _, model)=>Text(model.packageInfo.appName),),

      // ),

      backgroundColor: COLOR_PRIMARY,
      body: ScopedModelDescendant<MainModel>(
        builder: (context, child, model) => FutureBuilder<int>(
          future: model.checkAgreementStatus(),
          builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
            if (!snapshot.hasData)
              return Center(child: CircularProgressIndicator());

            switch (snapshot.data) {
              case AGREEMENT_STATUS_ACCEPTED:
                return Container(
                  child: Text('lead info'),
                ); //LeadInfoView();
              case AGREEMENT_STATUS_PENDING:
                return WelcomeView(
                  agreementStatus: AGREEMENT_STATUS_PENDING,
                );
                break;
              default:
                return WelcomeView();
            }
          },
        ),
      ),
    );
  }
}
