import 'package:demo/components/routes.dart';
import 'package:flutter/material.dart';

class Contribute extends StatelessWidget {
  const Contribute({Key? key}) : super(key: key);

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
            'Contribute & Listen',
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
                      Navigator.pushNamed(
                          context, ContributeRoutes.ResourcesForPage);
                    },
                    child: ListTile(
                      title: Text(
                        'Resources for Parents & Teachers',
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
                        Navigator.pushNamed(
                            context, ContributeRoutes.HelpSomeonePage);
                      },
                      child: ListTile(
                        title: Text('Help someone else',
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
                      ))
                ])));
  }
}
