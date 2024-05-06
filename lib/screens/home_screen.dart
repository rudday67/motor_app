import 'package:flutter/material.dart';
import 'package:motor_app/components/asset_image_rounded.dart';
import 'package:motor_app/components/asset_image_widget.dart';
import 'package:motor_app/components/text_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //title: Text(''),
      //),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Sell Motorbikes',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            _buildCarousel(),
            SizedBox(height: 20),
            Text(
              'Daftar Motor',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            _buildAuctionItemList(),
          ],
        ),
      ),
    );
  }

  Widget _buildCarousel() {
    return Container(
      height: 200,
      color: const Color.fromARGB(255, 255, 255, 255), // Placeholder color
      child: PageView(
        children: [
          _buildCarouselItem('assets/images/motor3.png'),
          _buildCarouselItem('assets/images/motor4.png'),
          _buildCarouselItem('assets/images/motor5.png'),
          _buildCarouselItem('assets/images/motor1.png'),
          _buildCarouselItem('assets/images/motor2.png'),
          _buildCarouselItem('assets/images/motor6.png'),
          _buildCarouselItem('assets/images/motor7.png'),
          _buildCarouselItem('assets/images/motor8.png'),
        ],
      ),
    );
  }

  Widget _buildCarouselItem(String imagePath) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildAuctionItemList() {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: 8,
      itemBuilder: (context, index) {
        return _buildAuctionItem(
          'Motor japstyle ${index + 1}',
          'Mesin bagus BPKP & STNK akur ${index + 1}',
          'assets/images/motor${index + 1}.png',
        );
      },
    );
  }

  Widget _buildAuctionItem(String title, String description, String imagePath) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'pesan',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
