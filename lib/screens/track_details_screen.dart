import 'package:flutter/material.dart';

class TrackDetailsScreen extends StatelessWidget {
  final String programName;
  final String description;

  const TrackDetailsScreen({
    super.key,
    required this.programName,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(programName),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Description',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(description),
            const SizedBox(height: 24),
            const Text(
              'Tasks',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            ...List.generate(3, (index) {
              return CheckboxListTile(
                title: Text('Task ${index + 1} for $programName'),
                value: index == 0, 
                onChanged: (value) {},
              );
            }),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                
              },
              child: const Text('Add Reflection'),
            ),
          ],
        ),
      ),
    );
  }
}