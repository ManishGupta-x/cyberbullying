import 'package:demo/components/routes.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';

class LearnMore extends StatelessWidget {
  const LearnMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEF8B39),
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () {
            Navigator.pushNamed(context, MyRoutes.pageTwo);
          },
          child: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
        ),
        title: Text(
          'Learn More',
          style: TextStyle(
            fontFamily: 'Lexend Deca',
            color: Colors.white,
            fontSize: 22,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
        child: ListView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, LearnMoreRoutes.CommonIssuesPage);
              },
              child: ListTile(
                title: Text(
                  'Common Issues',
                  style: TextStyle(
                    fontFamily: "Lexend Deca",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: Icon(
                  Icons.navigate_next,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, LearnMoreRoutes.KnowRightsPage);
              },
              child: ListTile(
                title: Text('Know Your Rights',
                    style: TextStyle(
                      fontFamily: "Lexend Deca",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    )),
                trailing: Icon(
                  Icons.navigate_next,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(
                    context, LearnMoreRoutes.FrequentlyAskedPage);
              },
              child: ListTile(
                title: Text(
                  'Frequently Asked Questions',
                  style: TextStyle(
                    fontFamily: "Lexend Deca",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: Icon(
                  Icons.navigate_next,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
