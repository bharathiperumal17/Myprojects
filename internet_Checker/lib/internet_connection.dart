import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NetworkController extends GetxController {
  final Connectivity connect = Connectivity();

  void updateConnectionStatus(dynamic connectivityResult) {
    if (connectivityResult is List<ConnectivityResult>) {
      bool hasNoConnection =
          connectivityResult.contains(ConnectivityResult.none);
      if (hasNoConnection) {
        Get.to(const NoInternetScreen()); 
      } else {
        // Close any open NoInternetScreen (optional)
        Get.back<NoInternetScreen>();
      }
    } else if (connectivityResult is ConnectivityResult) {
      if (connectivityResult == ConnectivityResult.none) {
        Get.to(const NoInternetScreen()); 
      } else {
        // Close any open NoInternetScreen (optional)
        Get.back<NoInternetScreen>();
      }
    } else {
      print('Unexpected data type received: $connectivityResult');
    }
  }

  void showNoConnectionSnackbar() {
    if (!Get.isSnackbarOpen) {
      Get.rawSnackbar(
          message: 'No Internet Connection',
          isDismissible: false,
          duration: null,
          backgroundColor: Colors.red,
          margin: const EdgeInsets.all(20),
          snackStyle: SnackStyle.FLOATING,
          mainButton:
              ElevatedButton(onPressed: okButton, child: const Text('Ok')));
    }
  }

  okButton() {
    showNoConnectionSnackbar();
  }

  void closeSnackbarIfOpen() {
    if (Get.isSnackbarOpen) {
      Get.closeAllSnackbars();
    }
  }

  @override
  void onInit() {
    super.onInit();
    connect.onConnectivityChanged.listen((event) {
      updateConnectionStatus(event);
    });
  }
}

class DependencyInjection {
  static void init() {
    Get.put<NetworkController>(NetworkController(), permanent: true);
  }
}

class NoInternetScreen extends StatelessWidget {
  const NoInternetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
