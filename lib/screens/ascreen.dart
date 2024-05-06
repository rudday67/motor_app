import 'package:flutter/material.dart';
import 'package:motor_app/components/asset_image_widget.dart'; // Pastikan import ini benar

class AScreen extends StatefulWidget {
  const AScreen({Key? key}) : super(key: key);

  @override
  _AScreenState createState() => _AScreenState();
}

class _AScreenState extends State<AScreen> {
  int _countLike = 0;

  void _incrementLike() {
    setState(() {
      _countLike++;
    });
  }

  void _decrementLike() {
    if (_countLike > 0) {
      setState(() {
        _countLike--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AssetImageWidget(
              imagePath:
                  'assets/images/lele.png', // Ubah gambar sesuai kebutuhan
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Ubah teks ini sesuai kebutuhan'), // Ubah teks ini
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: _incrementLike,
                  icon: const Icon(Icons.thumb_up),
                ),
                const SizedBox(width: 16),
                IconButton(
                  onPressed: _decrementLike,
                  icon: const Icon(Icons.thumb_down),
                ),
                const SizedBox(width: 16),
                Text('$_countLike Like'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
