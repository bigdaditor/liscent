import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:liscent/model/Doscent.dart';
import 'package:liscent/model/Exhibition.dart';

class ApiService {
  static Future<List<Exhibition>> getExhibition() async {
    List<Exhibition> exhibitions = [];
    final String response = await rootBundle.loadString('assets/db/exhibition.json');
    final data = await jsonDecode(response);

    for (var exhibition in data['items']) {
      final instance = Exhibition.fromJson(exhibition);
      exhibitions.add(instance);

    }
    return exhibitions;
  }

  static Future<List<Doscent>> getDoscent() async {
    List<Doscent> doscents = [];
    final String response = await rootBundle.loadString('assets/db/doscent.json');
    final data = await jsonDecode(response);

    for (var doscent in data['items']) {
      final instance = Doscent.fromJson(doscent);
      doscents.add(instance);

    }
    return doscents;
  }
}