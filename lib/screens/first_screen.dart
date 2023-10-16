import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:route_management_with_getx/manager/route_manager.dart';
import 'package:route_management_with_getx/resource/model/user_model.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.secondScreen);
              },
              child: const Text('Go to Second Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(
                  Routes.secondScreen,
                  parameters: {
                    'spiceLevel': 'hot',
                    'dishName': 'Butter Chicken',
                  },
                );
              },
              child: const Text('Go to Second Screen with Parameters 🌡️🍗'),
            ),
            ElevatedButton(
              onPressed: () {
                var model = UserModel(id: '12345', name: "John Doe", age: 25);
                Get.toNamed(
                  Routes.secondScreen,
                  arguments: model,
                );
              },
              child: const Text('Go to Second Screen with Arguments 🎁🦄'),
            )
          ],
        ),
      ),
    );
  }
}
