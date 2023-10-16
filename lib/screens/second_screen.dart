import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:route_management_with_getx/resource/model/user_model.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});

  final spiceLevel = Get.parameters['spiceLevel'];
  final dishName = Get.parameters['dishName'];

  final userModel = Get.arguments as UserModel?;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "parameters: ${Get.parameters}",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Text(
              "arguments: $userModel",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Get.close(1);
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
