import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = 'about_screen';
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                  'Welcome to BibleMaze', //widget.mazeImage.bibleverse
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
                RichText(
                    text: const TextSpan(
                        text: 'BibleMaze ',
                        style: TextStyle(
                          fontFamily: 'Bitter',
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                        children: <TextSpan>[
                      TextSpan(
                        text:
                            'is a mobile app designed to help Christians navigate through the wealth of Christian content available.\n\n The app is ',
                        style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize: 14.0,
                            color: Colors.white),
                      ),
                      TextSpan(
                        text: 'launching soon',
                        style: TextStyle(
                            fontFamily: 'Bitter',
                            fontSize: 22.0,
                            color: Colors.white),
                      ),
                      TextSpan(
                        text:
                            ' and is currently in development and testing phase, so ',
                        style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize: 14.0,
                            color: Colors.white),
                      ),
                      TextSpan(
                        text: 'watch this space.',
                        style: TextStyle(
                            fontFamily: 'Bitter',
                            fontSize: 22.0,
                            color: Colors.white),
                      ),
                      TextSpan(
                        text:
                            '\n\nContact biblemaze1@gmail.com if you would like to get involved.',
                        style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize: 14.0,
                            color: Colors.white),
                      ),
                    ])),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
