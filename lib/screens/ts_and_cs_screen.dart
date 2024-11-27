import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TsAndCsScreen extends StatelessWidget {
  const TsAndCsScreen({super.key});

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
                Text(
                  'Terms & Conditions', //widget.mazeImage.bibleverse
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
                            text: 'Terms & Conditions',
                            style: const TextStyle(
                              fontFamily: 'Bitter',
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                            children: <TextSpan>[
                          const TextSpan(
                            text:
                                '\n\nThese terms and conditions applies to the BibleMaze app (hereby referred to as "Application") for mobile devices that was created by Kayla (hereby referred to as "Service Provider") as a Free service.\n\nUpon downloading or utilizing the Application, you are automatically agreeing to the following terms. It is strongly advised that you thoroughly read and understand these terms prior to using the Application. The content used in the mobile application is used for educational and informational purposes only. All rights to the quotes, Bible verses, song lyrics and other materials belong to their respective owners. No copyright infringement is intended. I do not own nor claim to own the rights to any of the quotes, Bible verses, or song lyrics used. Unauthorized copying, modification of the Application, any part of the Application, or our trademarks is strictly prohibited. Any attempts to extract the source code of the Application, translate the Application into other languages, or create derivative versions are not permitted. All trademarks, images, copyrights, database rights, and other intellectual property rights related to the Application remain the property of the Service Provider. The Service Provider is dedicated to ensuring that the Application is as beneficial and efficient as possible. As such, they reserve the right to modify the Application or charge for their services at any time and for any reason. The Service Provider assures you that any charges for the Application or its services will be clearly communicated to you.\n\nThe Application stores and processes personal data that you have provided to the Service Provider in order to provide the Service. It is your responsibility to maintain the security of your phone and access to the Application. The Service Provider strongly advise against jailbreaking or rooting your phone, which involves removing software restrictions and limitations imposed by the official operating system of your device. Such actions could expose your phone to malware, viruses, malicious programs, compromise your phone\'s security features, and may result in the Application not functioning correctly or at all.\n\nPlease note that the Application utilizes third-party services that have their own Terms and Conditions. Below are the links to the Terms and Conditions of the third-party service providers used by the Application:',
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
                                    path: 'policies/terms/');
                                await _launchInBrowser(toLaunch);
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
                                    host: 'google.com',
                                    path: 'analytics/terms/');
                                await _launchInBrowser(toLaunch);
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
                                    path: 'terms/crashlytics/');
                                await _launchInBrowser(toLaunch);
                              },
                          ),
                          const TextSpan(
                            text:
                                '\n\nPlease be aware that the Service Provider does not assume responsibility for certain aspects. Some functions of the Application require an active internet connection, which can be Wi-Fi or provided by your mobile network provider. The Service Provider cannot be held responsible if the Application does not function at full capacity due to lack of access to Wi-Fi or if you have exhausted your data allowance.\n\nIf you are using the application outside of a Wi-Fi area, please be aware that your mobile network provider\'s agreement terms still apply. Consequently, you may incur charges from your mobile provider for data usage during the connection to the application, or other third-party charges. By using the application, you accept responsibility for any such charges, including roaming data charges if you use the application outside of your home territory (i.e., region or country) without disabling data roaming. If you are not the bill payer for the device on which you are using the application, they assume that you have obtained permission from the bill payer.\n\nSimilarly, the Service Provider cannot always assume responsibility for your usage of the application. For instance, it is your responsibility to ensure that your device remains charged. If your device runs out of battery and you are unable to access the Service, the Service Provider cannot be held responsible.\n\nIn terms of the Service Provider\'s responsibility for your use of the application, it is important to note that while they strive to ensure that it is updated and accurate at all times, they do rely on third parties to provide information to them so that they can make it available to you. The Service Provider accepts no liability for any loss, direct or indirect, that you experience as a result of relying entirely on this functionality of the application.\n\nThe Service Provider may wish to update the application at some point. The application is currently available as per the requirements for the operating system (and for any additional systems they decide to extend the availability of the application to) may change, and you will need to download the updates if you want to continue using the application. The Service Provider does not guarantee that it will always update the application so that it is relevant to you and/or compatible with the particular operating system version installed on your device. However, you agree to always accept updates to the application when offered to you. The Service Provider may also wish to cease providing the application and may terminate its use at any time without providing termination notice to you. Unless they inform you otherwise, upon any termination, (a) the rights and licenses granted to you in these terms will end; (b) you must cease using the application, and (if necessary) delete it from your device.',
                            style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 14.0,
                                color: Colors.white),
                          ),
                          const TextSpan(
                            text: '\n\nPermitted and Unpermitted Use',
                            style: TextStyle(
                                fontFamily: 'Bitter',
                                fontSize: 20.0,
                                color: Colors.white),
                          ),
                          const TextSpan(
                            text:
                                '\n\nYou may use the Application in accordance with these Terms for either your personal and non-commercial use or for the internal use of your non-profit religious organization. All rights not expressly granted to you are reserved by the Service Provider. You agree you are not permitted and will not use the Application as follows: \n - in any way that violates any federal, state, local, or international law or regulation;\n - for the purpose of exploiting, harming, or attempting to exploit or harm minors in any way by exposing them to inappropriate content, asking for personally identifiable information, or otherwise;\n - to impersonate or attempt to impersonate any company or person, including the Service Provider or another Application user;\n - to engage in any other conduct which, as determined by us, may harm the Service Provider or users of the Application  or expose them to liability;\n - in any manner that could disable, overburden, damage, or impair the Application  or interfere with any other person’s use of the Application ;\n - use any robot, spider, or other automatic device, process, or means to access the Application  for any purpose, including monitoring or copying any of the material on the Application;\n - to introduce any viruses, Trojan horses, worms, logic bombs, or other material which is malicious or technologically harmful;\n - to attempt to gain unauthorized access to, interfere with, damage, or disrupt any parts of the Application  or any server, computer, or database connected to the Application ;\n - to attack the Application  via a denial-of-service attack or a distributed denial-of-service attack; and\n - otherwise attempt to interfere with the proper working of the Application .\n\nYou also agree that you will not send, knowingly receive, upload, download, use, or re-use any material which:\n - contains any material which is defamatory, obscene, indecent, abusive, offensive, harassing, violent, hateful, inflammatory, or otherwise objectionable;\n - promotes sexually explicit or pornographic material, violence, or discrimination on any basis, including that based on race, sex, religion, nationality, disability, sexual orientation, or age;\n - infringes any patent, trademark, trade secret, copyright, or other intellectual property or other rights of any other person;\n - violates the legal rights (including the rights of publicity and privacy) of others or contains any material that could give rise to any civil or criminal liability under laws or regulations;\n - promotes any illegal activity, or advocates, promotes, or assists any unlawful act;\n - involves commercial activities or sales, such as contests, sweepstakes, and other sales promotions, barter, or advertising; and/or\n - gives the impression that the material emanates from or is endorsed by the Service Provider or any other person or entity, if this is not the case.',
                            style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 14.0,
                                color: Colors.white),
                          ),
                          const TextSpan(
                            text: '\n\nYour Reliance on Information',
                            style: TextStyle(
                                fontFamily: 'Bitter',
                                fontSize: 20.0,
                                color: Colors.white),
                          ),
                          const TextSpan(
                            text:
                                '\n\nThe information presented on or through the Application is made available solely for general information purposes. Although the Service Provider strives to provide the information in a way that will result in spiritual growth, the Service Provider does not warrant the accuracy, completeness, or usefulness of this information. Any reliance you place on such information is strictly at your own risk. The Service Provider disclaim all liability and responsibility arising from any reliance placed on such materials by you or any other visitor to the Application, or by anyone who may be informed of any of its contents.',
                            style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 14.0,
                                color: Colors.white),
                          ),
                          const TextSpan(
                            text: '\n\nLimitation on Liability',
                            style: TextStyle(
                                fontFamily: 'Bitter',
                                fontSize: 20.0,
                                color: Colors.white),
                          ),
                          const TextSpan(
                            text:
                                '\n\nIN NO EVENT WILL THE SERVICE PROVIDER BE LIABLE FOR DAMAGES OF ANY KIND, UNDER ANY LEGAL THEORY, ARISING OUT OF OR IN CONNECTION WITH YOUR USE, OR INABILITY TO USE, THE APPLICATION, ANY WEBSITES LINKED TO IT, ANY CONTENT OFFERED ON OR THROUGH THE APPLICATION, OR SUCH OTHER WEBSITES OR ANY SERVICES OR ITEMS OBTAINED THROUGH BIBLEMAZE, INCLUDING ANY DIRECT, INDIRECT, SPECIAL, INCIDENTAL, CONSEQUENTIAL, OR PUNITIVE DAMAGES, INCLUDING, BUT NOT LIMITED TO, PERSONAL INJURY, PAIN AND SUFFERING, EMOTIONAL DISTRESS, LOSS OF REVENUE, LOSS OF PROFITS, LOSS OF BUSINESS OR ANTICIPATED SAVINGS, LOSS OF USE, LOSS OF GOODWILL, LOSS OF DATA, AND WHETHER CAUSED BY TORT (INCLUDING NEGLIGENCE), BREACH OF CONTRACT, OR OTHERWISE, EVEN IF FORESEEABLE.\n\nTHE FOREGOING DOES NOT AFFECT ANY LIABILITY WHICH CANNOT BE EXCLUDED OR LIMITED UNDER APPLICABLE LAW.',
                            style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 14.0,
                                color: Colors.white),
                          ),
                          const TextSpan(
                            text: '\n\nChanges to These Terms and Conditions',
                            style: TextStyle(
                                fontFamily: 'Bitter',
                                fontSize: 20.0,
                                color: Colors.white),
                          ),
                          const TextSpan(
                            text:
                                '\n\nThe Service Provider may periodically update their Terms and Conditions. Therefore, you are advised to review this page regularly for any changes. The Service Provider will notify you of any changes by posting the new Terms and Conditions on this page.\nThese terms and conditions are effective as of 2024-10-18.',
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
                                '\n\nIf you have any questions or suggestions about the Terms and Conditions, please do not hesitate to contact the Service Provider at biblemaze1@gmail.com.',
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
