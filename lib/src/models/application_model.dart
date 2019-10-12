import 'package:nisomenini/src/utils/constants.dart';
import 'package:package_info/package_info.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ApplicationModel extends Model {

  PackageInfo packageInfo;
  getPackageInfo() async {
    packageInfo = await PackageInfo.fromPlatform();
    notifyListeners();
  }

  Future<int> checkAgreementStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print('the agreement thing is${prefs.getInt(KEY_AGREEMENT_STATUS)}');
    final status = prefs.getInt(KEY_AGREEMENT_STATUS);
    return status == null ? AGREEMENT_STATUS_PENDING : status;
    // notifyListeners();
  }
}
