import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyProfilePage(),
    );
  }
}

class MyProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text('My Profile'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.phone),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            CircleAvatarSection(
              icon: Icons.icecream_outlined,
              text: 'Ice cream is very delicious right?',

            ),
            CircleAvatarSection(
              icon: Icons.code,
              text: 'Programming is not boring if you love it',
            ),
            CircleAvatarSection(
              icon: Icons.egg_outlined,
              text: 'If you submit code directly copy from chatgpt then mark will 0',
            ),
          ],
        ),
      ),
    );
  }
}

class CircleAvatarSection extends StatelessWidget {
  final IconData icon;
  final String text;

  CircleAvatarSection({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 85,
            backgroundColor: Colors.purple.shade100,
            child: Icon(
              icon,
              size: 100,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 8,),
          Text(
            text,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
