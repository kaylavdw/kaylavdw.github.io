import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    Future<void>? _launched;

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
                Text(
                  'Privacy Policy', //widget.mazeImage.bibleverse
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
                            text: 'Privacy Policy ',
                            style: const TextStyle(
                              fontFamily: 'Bitter',
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                            children: <TextSpan>[
                          const TextSpan(
                            text:
                                '\n\nThis privacy policy applies to the BibleMaze app (hereby referred to as "Application") for mobile devices that was created by Kayla van der Watt (hereby referred to as "Service Provider") as a Free service. This service is intended for use \"AS IS\".',
                            style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 14.0,
                                color: Colors.white),
                          ),
                          const TextSpan(
                            text: '\n\nInformation Collection and Use',
                            style: TextStyle(
                                fontFamily: 'Bitter',
                                fontSize: 20.0,
                                color: Colors.white),
                          ),
                          const TextSpan(
                            text:
                                '\n\nThe Application collects information when you download and use it. This information may include information such as \n - Your device\'s Internet Protocol address (e.g. IP address) \n - The pages of the Application that you visit, the time and date of your visit, the time spent on those pages, your likes and comments \n - The time spent on the Application \n - Email address (used to log in) \n - The operating system you use on your mobile device\n\nThe Application does not gather precise information about the location of your mobile device.\nThe Service Provider may use the information you provided to contact you from time to time to provide you with important information, required notices and marketing promotions.\n\nFor a better experience, while using the Application, the Service Provider may require you to provide us with certain personally identifiable information, including but not limited to Email. The information that the Service Provider request will be retained by them and used as described in this privacy policy.',
                            style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 14.0,
                                color: Colors.white),
                          ),
                          const TextSpan(
                            text: '\n\nThird Party Access',
                            style: TextStyle(
                                fontFamily: 'Bitter',
                                fontSize: 20.0,
                                color: Colors.white),
                          ),
                          const TextSpan(
                            text:
                                '\n\nOnly aggregated, anonymized data is periodically transmitted to external services to aid the Service Provider in improving the Application and their service. The Service Provider may share your information with third parties in the ways that are described in this privacy statement.\nPlease note that the Application utilizes third-party services that have their own Privacy Policy about handling data. Below are the links to the Privacy Policy of the third-party service providers used by the Application: ',
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
                            text: '\n- Google Play Services',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                final Uri toLaunch = Uri(
                                    scheme: 'https',
                                    host: 'google.com',
                                    path: 'policies/privacy/');
                                _launched = _launchInBrowser(toLaunch);
                              },
                          ),
                          TextSpan(
                            style: const TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 14.0,
                                color: Colors.blue),
                            text: '\n- Google Analytics for Firebase',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                final Uri toLaunch = Uri(
                                    scheme: 'https',
                                    host: 'firebase.google.com',
                                    path: 'support/privacy/');
                                _launched = _launchInBrowser(toLaunch);
                              },
                          ),
                          TextSpan(
                            style: const TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 14.0,
                                color: Colors.blue),
                            text: '\n- Firebase Crashlytics',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                final Uri toLaunch = Uri(
                                    scheme: 'https',
                                    host: 'firebase.google.com',
                                    path: 'support/privacy/');
                                _launched = _launchInBrowser(toLaunch);
                              },
                          ),
                          const TextSpan(
                            text:
                                '\n\nThe Service Provider may disclose User Provided and Automatically Collected Information:\n\n - as required by law, such as to comply with a subpoena, or similar legal process; \n - when they believe in good faith that disclosure is necessary to protect their rights, protect your safety or the safety of others, investigate fraud, or respond to a government request;\n - with their trusted services providers who work on their behalf, do not have an independent use of the information we disclose to them, and have agreed to adhere to the rules set forth in this privacy statement.',
                            style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 14.0,
                                color: Colors.white),
                          ),
                          const TextSpan(
                            text: '\n\nOpt-Out Rights',
                            style: TextStyle(
                                fontFamily: 'Bitter',
                                fontSize: 20.0,
                                color: Colors.white),
                          ),
                          const TextSpan(
                            text:
                                '\n\nYou can stop all collection of information by the Application easily by uninstalling it. You may use the standard uninstall processes as may be available as part of your mobile device or via the mobile application marketplace or network.',
                            style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 14.0,
                                color: Colors.white),
                          ),
                          const TextSpan(
                            text: '\n\nData Retention Policy',
                            style: TextStyle(
                                fontFamily: 'Bitter',
                                fontSize: 20.0,
                                color: Colors.white),
                          ),
                          const TextSpan(
                            text:
                                '\n\nThe Service Provider will retain User Provided data for as long as you use the Application and for a reasonable time thereafter. If you\'d like them to delete User Provided Data that you have provided via the Application, please contact them at biblemaze1@gmail.com and they will respond in a reasonable time.',
                            style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 14.0,
                                color: Colors.white),
                          ),
                          const TextSpan(
                            text: '\n\nChildren',
                            style: TextStyle(
                                fontFamily: 'Bitter',
                                fontSize: 20.0,
                                color: Colors.white),
                          ),
                          const TextSpan(
                            text:
                                '\n\nThe Service Provider does not use the Application to knowingly solicit data from or market to children under the age of 13. The Application does not address anyone under the age of 13. The Service Provider does not knowingly collect personally identifiable information from children under 13 years of age. In the case the Service Provider discover that a child under 13 has provided personal information, the Service Provider will immediately delete this from their servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact the Service Provider (biblemaze1@gmail.com) so that they will be able to take the necessary actions.',
                            style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 14.0,
                                color: Colors.white),
                          ),
                          const TextSpan(
                            text: '\n\nSecurity',
                            style: TextStyle(
                                fontFamily: 'Bitter',
                                fontSize: 20.0,
                                color: Colors.white),
                          ),
                          const TextSpan(
                            text:
                                '\n\nThe Service Provider is concerned about safeguarding the confidentiality of your information. The Service Provider provides physical, electronic, and procedural safeguards to protect information the Service Provider processes and maintains.',
                            style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 14.0,
                                color: Colors.white),
                          ),
                          const TextSpan(
                            text: '\n\nChanges',
                            style: TextStyle(
                                fontFamily: 'Bitter',
                                fontSize: 20.0,
                                color: Colors.white),
                          ),
                          const TextSpan(
                            text:
                                '\n\nThis Privacy Policy may be updated from time to time for any reason. The Service Provider will notify you of any changes to the Privacy Policy by updating this page with the new Privacy Policy. You are advised to consult this Privacy Policy regularly for any changes, as continued use is deemed approval of all changes. \nThis privacy policy is effective as of 2024-10-18.',
                            style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 14.0,
                                color: Colors.white),
                          ),
                          const TextSpan(
                            text: '\n\nYour Consent',
                            style: TextStyle(
                                fontFamily: 'Bitter',
                                fontSize: 20.0,
                                color: Colors.white),
                          ),
                          const TextSpan(
                            text:
                                '\n\nBy using the Application, you are consenting to the processing of your information as set forth in this Privacy Policy now and as amended by us.',
                            style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 14.0,
                                color: Colors.white),
                          ),
                          const TextSpan(
                            text: '\n\nContact Us',
                            style: TextStyle(
                                fontFamily: 'Bitter',
                                fontSize: 20.0,
                                color: Colors.white),
                          ),
                          const TextSpan(
                            text:
                                '\n\nIf you have any questions regarding privacy while using the Application, or have questions about the practices, please contact the Service Provider via email at biblemaze1@gmail.com.',
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
  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    throw Exception('Could not launch $url');
  }
}
