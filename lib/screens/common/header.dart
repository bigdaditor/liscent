import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liscent/screens/search/search_screen.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
   return AppBar(
       title: Image.asset('assets/logo.png', width: 130),
       centerTitle: true,
       backgroundColor: Colors.white,
       elevation: 0,
       actions: [
         IconButton(
           onPressed: () {
             Navigator.push(
               context,
               MaterialPageRoute(
                 builder: (context) => Search(),
               )
             );
           },
           icon: Image.asset('assets/icon_search.png'),
           padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
         )
       ],
     );
  }
}