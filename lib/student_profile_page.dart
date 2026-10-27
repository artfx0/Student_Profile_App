import 'package:flutter/material.dart';

class StudentProfilePage extends StatelessWidget {
  const StudentProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F4F8),
      appBar: AppBar(
        title: const Text('Student Profile'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Profile Avatar (Using your actual photo)
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blueAccent, width: 3),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/jasper_profile.png', // Your image path
                        width: 110,
                        height: 110,
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                // Student name and course
                const Text(
                  'John Paul Tato',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  'BS Information Technology',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),

                const SizedBox(height: 24),

                // Student details
                const Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.badge, color: Colors.blueAccent),
                        title: Text('Student Number'),
                        subtitle: Text(
                          '2026-00123',
                        ), // Replace with your actual student number
                      ),
                      Divider(height: 1),
                      ListTile(
                        leading: Icon(Icons.school, color: Colors.blueAccent),
                        title: Text('Year Level and Section'),
                        subtitle: Text(
                          '3rd Year - BSIT',
                        ), // Replace with your actual year/section
                      ),
                      Divider(height: 1),
                      ListTile(
                        leading: Icon(Icons.email, color: Colors.blueAccent),
                        title: Text('Email Address'),
                        subtitle: Text('BSIT MGA ASLOM'), // Your email
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                // Introduction
                const Text(
                  'About Me',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 8),

                const Text(
                  'I am an IT student who enjoys learning '
                  'about technology and creating applications. '
                  'My goal is to become a successful developer.',
                  style: TextStyle(fontSize: 16, height: 1.5),
                ),

                const SizedBox(height: 24),

                // Hobbies
                const Text(
                  'Hobbies and Interests',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 8),

                const Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    Chip(label: Text('Coding')),
                    Chip(label: Text('Gaming')),
                    Chip(
                      label: Text('Basketball'),
                    ), // Replace with your actual hobbies
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
