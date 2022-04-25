import 'package:flutter/material.dart';

import '../components/routes.dart';

class MyPageView extends StatefulWidget {
  const MyPageView({Key? key}) : super(key: key);

  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFEF8B39),
          title: Text(
            'Hey, how are you doing today?',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: "Lexend Deca"),
          ),
        ),
        body: 
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: PageView(controller: _pageController, children: <Widget>[
                Center(
                  child: InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, MyRoutes.pageTwo);
                    },
                    child: Image.asset(
                      'assets/images/happy.png',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Center(
                  child: InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, MyRoutes.pageTwo);
                    },
                    child: Image.asset(
                      'assets/images/sad.png',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Center(
                  child: InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, MyRoutes.pageTwo);
                    },
                    child: Image.asset(
                      'assets/images/stress.png',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ]),
            ),
          
        ),
    );
    
  }
}
