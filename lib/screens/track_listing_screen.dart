import 'package:flutter/material.dart';
import '../../routes.dart';

class TrackListingScreen extends StatelessWidget {
  const TrackListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final programs = [
      {'name': 'Mobile App Development', 'desc': 'Build Track My Work app'},
      {'name': 'Data Structures Course', 'desc': 'Complete Week 4 assignments'},
      {'name': 'Freelance Project X', 'desc': 'Client logo & branding'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Programs'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: programs.length,
        itemBuilder: (context, index) {
          final program = programs[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              title: Text(program['name']!),
              subtitle: Text(program['desc']!),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.programDetails,
                  arguments: {
                    'name': program['name'],
                    'description': program['desc'],
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}