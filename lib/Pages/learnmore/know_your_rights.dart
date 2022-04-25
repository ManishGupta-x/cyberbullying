import 'package:demo/Pages/gethelp/distract.dart';
import 'package:flutter/material.dart';

import '../../components/hyperlinks.dart';

class KnowYourRights extends StatelessWidget {
  const KnowYourRights({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xFFEF8B39),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    "Past Cases",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "The following article represents 6 case studies from over the globe, repectivey talking about cyberbullying and the effect it has on the human brain. Click on the image to read.",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  InkWell(
                      onTap: () {
                        url = LearnMoreLinks.caseStudyUrl;
                        launchURL();
                      },
                      child: Image.network(
                          "https://www.webpurify.com/site/wp-content/uploads/2021/06/xcomputer-HatticeEROL-Pixabay-1-1024x618.png.pagespeed.ic.EFT8saKAI7.png")),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Understand Citizen Rights",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Read the following to understand rights against cyberbullying in depth.",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  InkWell(
                      onTap: () {
                        url = LearnMoreLinks.rightsUrl;
                        launchURL();
                      },
                      child: Image.network(
                          "https://blog.ipleaders.in/wp-content/uploads/2017/05/BV-Acharya-3.jpg")),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
