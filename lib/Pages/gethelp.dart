import 'package:demo/components/routes.dart';
import 'package:flutter/material.dart';



class GetHelp extends StatelessWidget {
  const GetHelp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void onBeingPressed() {
      Navigator.pushNamed(context, MyRoutes.pageTwo);
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEF8B39),
        automaticallyImplyLeading: false,
        leading:
            IconButton(onPressed: onBeingPressed, icon: Icon(Icons.arrow_back)),
        title: Text(
          'Get Help',
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
          padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, GetHelpRoutes.DistractPage);
              },
              child: ListTile(
                title: Text(
                  'Distract from the issue',
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
                    context, GetHelpRoutes.TalkPage);
              },
              child: ListTile(
                title: Text('Talk/Rant about the issue',
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
                    context, GetHelpRoutes.TherapistPage);
              },
              child: ListTile(
                title: Text(
                  'Find nearest therapists',
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
