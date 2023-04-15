import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
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
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // width: MediaQuery.of(context).size.width,
                height: 330,
                child: Stack(
                  children: [
                    Container(
                      child: Image.asset('assets/poster02.jpg',fit: BoxFit.fitWidth),
                    ),
                    Positioned(
                        child: Image.asset('assets/icon_home_off.png'),width: 30,height: 30,)
                  ],
                ),
              ),
              Container()
            ],
          ),
        ),
      ),
    );
  }
}
