import 'package:flutter/material.dart';
import 'package:motor_app/screens/routes/SecondScreen/custom_screen.dart';
import 'package:motor_app/screens/setting_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  void goToAnotherRoute(context, screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
    // Navigator.pushNamed(context, '/second-screen');
  }

  @override
  Widget build(BuildContext context) {
    // return const Center(
    //   child: Text('Navigate to Screen Profile'),
    // );
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)), // 0
                Tab(icon: Icon(Icons.directions_transit)), // 1
                Tab(icon: Icon(Icons.directions_bike)), // 2
              ],
            ),
          ),
          body: TabBarView(
            children: [
              const CustomScreen(), // 0
              const SettingScreen(), // 1
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, '/news-screen'),
                    child: const Text('Get data News'),
                  ),
                  TextButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, '/create-news-screen'),
                    child: const Text('Create Data News'),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
