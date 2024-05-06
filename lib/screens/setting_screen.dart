// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:motor_app/components/asset_image_widget.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  int _count = 0;
  final String description =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum";

  void _increment() {
    setState(() {
      _count++;
    });
  }

  void _decrement() {
    if (_count > 0) {
      setState(() {
        _count--;
      });
    }
  }

  // void _reset() {
  //   setState(() {
  //     _count = 0;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
    //     // IconButton(onPressed: _reset, icon: const Icon(Icons.refresh)),
    //     IconButton(onPressed: _decrement, icon: const Icon(Icons.remove)),
    //     Text('Counter : $_count'),
    //     Text(),
    //     IconButton(onPressed: _increment, icon: const Icon(Icons.add)),
    //     IconButton(onPressed: _twoTimes, icon: const Icon(Icons.close)),
    //   ]),
    // );
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const AssetImageWidget(
            imagePath: 'assets/images/gambar_rudy.png',
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Text("Perkenalkan saya Rudy mahasiswa undiksha")],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            IconButton(onPressed: _increment, icon: const Icon(Icons.thumb_up)),
            IconButton(
                onPressed: _count > 0 ? _decrement : null,
                icon: const Icon(Icons.thumb_down)),
            Text('$_count Likes')
          ])
        ],
      ),
    );
  }
}
