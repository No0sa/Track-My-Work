import 'package:flutter/material.dart';
import '../../routes.dart';

class TrackListingScreen extends StatelessWidget {
  const TrackListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final programs = [
      {
        'name': 'Mobile App Development',
        'desc': 'Build Track My Work app for MAD course',
        'color': Colors.blue,
      },
      {
        'name': 'Data Structures',
        'desc': 'Complete Week 4 assignments and quiz',
        'color': Colors.green,
      },
      {
        'name': 'Freelance Project X',
        'desc': 'Deliver logo and brand guidelines',
        'color': Colors.purple,
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('My Programs')),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: programs.length,
        itemBuilder: (context, index) {
          final p = programs[index];
          return Card(
            child: InkWell(
              onTap: () => Navigator.pushNamed(
                context,
                AppRoutes.programDetails,
                arguments: {'name': p['name'], 'description': p['desc']},
              ),
              borderRadius: BorderRadius.circular(16),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Container(
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        color: p['color'] as Color,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            p['name'] as String,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            p['desc'] as String,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Future: Add new program
        },
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: const Icon(Icons.add),
      ),
    );
  }
}
