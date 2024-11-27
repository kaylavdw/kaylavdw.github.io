import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DeleteDataScreen extends StatefulWidget {
  const DeleteDataScreen({super.key});

  @override
  State<DeleteDataScreen> createState() => _DeleteDataScreenState();
}

class _DeleteDataScreenState extends State<DeleteDataScreen> {
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
                  'BibleMaze', //widget.mazeImage.bibleverse
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
                Card(
                  elevation: 10,
                  shadowColor: Colors.white,
                  margin: EdgeInsets.all(20),
                  color: Colors.grey[850],
                  child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: RichText(
                        text: TextSpan(
                            text: 'Steps to delete data',
                            style: const TextStyle(
                              fontFamily: 'Bitter',
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                            children: <TextSpan>[
                          const TextSpan(
                            text:
                                '\n\nThe Application stores the following information that you can request to be deleted \n - Your email address (used to log in) \n - Your likes and notes \n\nIf you would like the Application to remove the stored data, please send us an ',
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
                            text: 'email',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                _sendEmail();
                              },
                          ),
                          const TextSpan(
                            text:
                                '. We will then delete all data that is stored against the email address from which you send the delete request email within a reasonable timeframe.',
                            style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 14.0,
                                color: Colors.white),
                          ),
                        ])),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ));
    ;
  }
}

Future<void> _launchInBrowser(Uri url) async {
  // print(url.toString().replaceAll('%23', '#'));
  // print(Regex.Replace())

  if (!await launchUrl(
    Uri.parse(url.toString().replaceAll('%23', '#')),
    mode: LaunchMode.externalApplication,
  )) {
    throw Exception('Could not launch $url');
  }
}

void _sendEmail() {
  String body = 'Hi, please delete all my BibleMaze data.';
  String subject = 'Delete Data';

  final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'biblemaze1@gmail.com',
      query: 'body=$body&subject=$subject');
  launchUrl(emailLaunchUri);
}
