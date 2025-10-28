import 'package:flutter/material.dart';
import '../../models/program.dart';

class ProgramDetailsScreen extends StatelessWidget {
  final Program program;

  const ProgramDetailsScreen({super.key, required this.program});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(program.name)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Description', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(program.description),
              ),
              const SizedBox(height: 30),
              const Text('Tasks', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 12),
              ...program.tasks.map((task) {
                return CheckboxListTile(
                  title: Text(task.title),
                  value: task.completed,
                  onChanged: (value) {},
                  controlAffinity: ListTileControlAffinity.leading,
                );
              }).toList(),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Add Reflection'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}