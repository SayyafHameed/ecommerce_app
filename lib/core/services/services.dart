import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
class AppServices extends GetxService
{
  late SharedPreferences shardPreferences;

  Future<AppServices> init() async
  {
     shardPreferences = await SharedPreferences.getInstance();
     return this;
  }
}

initialServices() async
{
  await Get.putAsync(() => AppServices().init());
}