import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:track_my_work/models/program.dart';

class ProgramService {
  Future<List<Program>> fetchPrograms() async {
    try {
      final jsonString = await rootBundle.loadString('assets/data/program_data.json');
      final jsonData = json.decode(jsonString) as List;
      return jsonData.map((item) => Program.fromJson(item)).toList();
    } catch (e) {
      throw Exception('Failed to load programs: $e');
    }
  }
}