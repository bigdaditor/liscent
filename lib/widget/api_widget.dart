import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:liscent/model/Doscent.dart';
import 'package:liscent/model/Exhibition.dart';

class ApiService {
  static Future<List<Exhibition>> getExhibition() async {
    List<Exhibition> exhibitions = [];
    final String response = await rootBundle.loadString('assets/db/exhibition.json');
    final data = await json.decode(response);

    for (var exhibition in data['items']) {
      final instance = Exhibition.fromJson(exhibition);
      instance.toString();
      exhibitions.add(instance);

    }
    return exhibitions;
  }

  static Future<List<Doscent>> getDoscent() async {
    List<Exhibition> exhibitions = [];
    List<Doscent> doscents = [];
    
    final String exhibitionStr = await rootBundle.loadString('assets/db/exhibition.json');
    final String doscentStr = await rootBundle.loadString('assets/db/doscent.json');
    
    final exhibitionItems = await jsonDecode(exhibitionStr)['items'];
    final doscentItems = await jsonDecode(doscentStr)['items'];
    
    for (var item in exhibitionItems) {
      final instance = Exhibition.fromJson(item);
      exhibitions.add(instance);
    }
    
    for (var item in doscentItems) {
      final exhibition = exhibitions.firstWhere((e) => e.id == item['exhibitionId']);
      item['image'] = exhibition.image;

      final instance = Doscent.fromJson(item);
      doscents.add(instance);
    }
    return doscents;
  }
}