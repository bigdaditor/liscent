import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return AppBar(
       title: Image.asset('assets/logo.png', width: 130),
       centerTitle: true,
       backgroundColor: Colors.white,
       elevation: 0,
       actions: [
         IconButton(
           onPressed: null,
           icon: Image.asset('assets/icon_search.png'),
           padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
         )
       ],
     );
  }
}