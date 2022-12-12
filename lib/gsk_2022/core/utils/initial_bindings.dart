import 'package:final_grad_proj/gsk_2022/core/app_export.dart';
import 'package:final_grad_proj/gsk_2022/data/apiClient/api_client.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.put(ApiClient());
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
  }
}
