import 'dart:convert';

import 'package:liscent/model/Item.dart';

class ItemList {
  final List<Item>? items;
  ItemList({
    this.items
  });

  factory ItemList.fromJson(String jsonString) {
    List<dynamic> listFromJson = json.decode(jsonString);
    List<Item> items = <Item>[];

    items = listFromJson.map((item) => Item.fromJson(item)).toList();
    return ItemList(items: items);
  }
}