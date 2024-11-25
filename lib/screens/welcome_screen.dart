import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = 'about_screen';
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri toLaunch =
        Uri(scheme: 'https', host: 'www.cylog.org', path: 'headers/');

    return Scaffold(
        body: ListView(
      children: [
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Column(
              children: [
                Text(
                  'Welcome to', //widget.mazeImage.bibleverse
                  style: TextStyle(
                    fontFamily: 'Bitter',
                    fontSize: 35.0,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18.0),
                    child: Image.asset(
                      'lib/assets/images/logo.jpg',
                      width: 150,
                      height: 150,
                    ),
                  ),
                ),
                Text(
                  'BibleMaze', //widget.mazeImage.bibleverse
                  style: TextStyle(
                    fontFamily: 'Bitter',
                    fontSize: 35.0,
                    color: Colors.white,
                  ),
                ),
                Card(
                  elevation: 10,
                  shadowColor: Colors.white,
                  margin: EdgeInsets.all(20),
                  color: Colors.grey[850],
                  child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: RichText(
                        text: TextSpan(
                            text: 'BibleMaze ',
                            style: const TextStyle(
                              fontFamily: 'Bitter',
                              fontSize: 22.0,
                              color: Colors.white,
                            ),
                            children: <TextSpan>[
                          const TextSpan(
                            text:
                                'is a soon-to-be mobile app designed to help Christians navigate through the wealth of Christian content available.\n\n The app is ',
                            style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 14.0,
                                color: Colors.white),
                          ),
                          const TextSpan(
                            text: 'launching soon!',
                            style: TextStyle(
                              fontFamily: 'Bitter',
                              fontSize: 22.0,
                              color: Colors.white,
                            ),
                          ),
                          const TextSpan(
                            text: '\n\nContact ',
                            style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 14.0,
                                color: Colors.white),
                          ),
                          TextSpan(
                            style: const TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 14.0,
                                color: Colors.blue),
                            text: 'biblemaze1@gmail.com',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                _sendEmail();
                              },
                          ),
                          const TextSpan(
                            text: ' if you would like to get involved.',
                            style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 14.0,
                                color: Colors.white),
                          ),
                        ])),
                  ),
                ),
                //   ElevatedButton(
                //  onPressed: () {
                //   Navigator.pushNamed(context, '/privacy');
                // },
                // child: Text('Privacy Policy'))
              ],
            ),
          ),
        )
      ],
    ));
  }
}

void _sendEmail() {
  String body = 'Hi, I would like to request more info. Please contact me.';
  String subject = 'Request more info';

  final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'biblemaze1@gmail.com',
      query: 'body=$body&subject=$subject');
  launchUrl(emailLaunchUri);
}
