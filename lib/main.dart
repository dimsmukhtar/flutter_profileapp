import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile App'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      'https://ik.imagekit.io/yxctvbjvh/IMG-1734950448885_ENFzcDXjkj.jpg?updatedAt=1734950451539',
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Dimas Mukhtar Yuliawan',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Software Developer'),
                    ],
                  ),
                ],
              ),
            ),

            // Education Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Education',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.school),
              title: Text('Bachelor of Computer Science'),
              subtitle: Text('University Sains Al-Quran, 2021 - present'),
            ),
            const ListTile(
              leading: Icon(Icons.school),
              title: Text('Senior High School'),
              subtitle: Text('SMAN 1 Sigaluh, 2018 - 2021'),
            ),

            const ListTile(
              leading: Icon(Icons.school),
              title: Text('Junior High School'),
              subtitle: Text('SMPN 2 Madukara, 2015 - 2018'),
            ),
            // Work Experience Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Work Experience',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.work),
              title: Text('Software Developer'),
              subtitle: Text('Singapore, 2026 - present'),
            ),

            // Hobbies Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Hobbies',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.music_note),
              title: Text('Listening to Music'),
            ),
            const ListTile(
              leading: Icon(Icons.movie),
              title: Text('Watching Movies'),
            ),
            const ListTile(
              leading: Icon(Icons.fitness_center),
              title: Text('Fitness & Gym'),
            ),
          ],
        ),
      ),
    );
  }
}
