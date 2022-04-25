// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../components/hyperlinks.dart';

void launchURL() async {
  if (!await launch(url)) throw 'Could not launch $url';
  bool? forceSafariVC = false;
}

String url = "";

class DistractPage extends StatelessWidget {
  const DistractPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEF8B39),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
            child: Text(
              'Meditation and Breathing',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: InkWell(
                        onTap: () {
                          url = DistractLinks.calmUrl;
                          launchURL();
                        },
                        child: Image.network(
                          'https://pbs.twimg.com/profile_images/547731071479996417/53RFXHu1.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 120,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: InkWell(
                        onTap: () {
                          url = DistractLinks.meditateUrl;
                          launchURL();
                        },
                        child: Image.network(
                          'https://freeappsforme.com/wp-content/uploads/2019/03/1-24-289x300.png',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 120,
                height: 120,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: InkWell(
                    onTap: () {
                      url = DistractLinks.spotifyUrl;
                      launchURL();
                    },
                    child: Image.asset('assets/images/spotify.png')),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 30, 16, 16),
                child: Text('Interactive Games',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    )),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: InkWell(
                        onTap: () {
                          url = DistractLinks.tetrisUrl;
                          launchURL();
                        },
                        child: Image.network(
                          'https://www.pixelstalk.net/wp-content/uploads/images1/Tetris-Logo-Backgrounds.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 120,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: InkWell(
                        onTap: () {
                          url = DistractLinks.bubbleUrl;
                          launchURL();
                        },
                        child: Image.network(
                          'http://archive.theletter.co.uk/images/lc/bubble_shooter.gif',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: InkWell(
                    onTap: () {
                      url = DistractLinks.mineSweeperUrl;
                      launchURL();
                    },
                    child: Image.network(
                      'https://cdn.mos.cms.futurecdn.net/f873f2282e16faeebdb4a09e2f3cef32-1024-80.jpg.webp',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  width: 120,
                  height: 120,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: InkWell(
                    onTap: () {
                      url = DistractLinks.pianoUrl;
                      launchURL();
                    },
                    child: Image.network(
                      'https://i.ytimg.com/vi/EOmsmFZe900/maxresdefault.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
