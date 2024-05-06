// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:motor_app/dto/news.dart';
import 'package:motor_app/services/data_service.dart';

class CreateNewsScreen extends StatefulWidget {
  const CreateNewsScreen({Key? key}) : super(key: key);

  @override
  _CreateNewsScreenState createState() => _CreateNewsScreenState();
}

class _CreateNewsScreenState extends State<CreateNewsScreen> {
  // ignore: unused_field
  Future<News>? _createNews;

  // Example usage of createPost (replace with your UI logic)
  void handleCreateNews(String title, String body) async {
    setState(() {
      _createNews = DataService.createNews(title, body);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetch and Create Data'),
      ),
      body: Center(
        child: Column(
          // Example form for creating a post
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Title',
              ),
              controller: _titleController,
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Body',
              ),
              controller: _bodyController,
              maxLines: null, // Allow multiline for body
            ),
            ElevatedButton(
              onPressed: () =>
                  handleCreateNews(_titleController.text, _bodyController.text),
              child: const Text('Create Post'),
            ),
          ],
        ),
      ),
    );
  }

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();
}
