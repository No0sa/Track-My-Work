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
      appBar: AppBar(title: Text(programName)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'About this program',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(description),
              ),
              const SizedBox(height: 30),
              const Text(
                'Tasks',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              ...List.generate(3, (index) {
                return CheckboxListTile(
                  title: Text('Task ${index + 1}'),
                  subtitle: Text('Estimated: ${30 + index * 15} mins'),
                  value: index == 0,
                  onChanged: (value) {},
                  controlAffinity: ListTileControlAffinity.leading,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                );
              }),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Add Reflection Note'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
