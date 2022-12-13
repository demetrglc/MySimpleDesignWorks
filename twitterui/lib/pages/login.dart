import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constats/colors.dart';
import '../constats/value.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundColor,
          title: Icon(
            FontAwesomeIcons.twitter,
            color: twitterColor,
          ),
          centerTitle: true,
          elevation: 0,
        ),
        backgroundColor: backgroundColor,
        body: Padding(
            padding: const EdgeInsets.all(pad1),
            child: Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 6,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            textlogin("Şu anda dünyada"),
                            textlogin("olup bitenleri gör.")
                          ],
                        )),
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 1,
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.all(pad2),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    child: Image.asset(
                                      "assets/images/google.png",
                                    ),
                                  ),
                                  Text(
                                    " Google ile devam et",
                                    style: GoogleFonts.cantataOne(
                                        fontSize: fontsize2, color: blackColor),
                                  ),
                                ],
                              ),
                            )),
                            decoration: BoxDecoration(
                                color: backgroundColor,
                                border: Border.all(color: Colors.black38),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(circular1))),
                          ),
                          myline(context),
                          containerlogin(
                              "Hesap oluştur", Colors.white, Colors.black),
                          RichText(
                            text: TextSpan(
                              text: "Kaydolarak ",
                              style: TextStyle(color: kvkk),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Hizmet Şartlarımızı ',
                                    style: TextStyle(color: twitterColor)),
                                TextSpan(
                                  text: ',',
                                ),
                                TextSpan(
                                    text: ' Gizlilik Politikamızı ',
                                    style: TextStyle(color: twitterColor)),
                                TextSpan(text: 've '),
                                TextSpan(
                                    text: 'Çerez Kullanımı Politikamızı ',
                                    style: TextStyle(color: twitterColor)),
                                TextSpan(text: 'kabul etmiş olursun.')
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: RichText(
                            text: TextSpan(
                          text: " Zaten bir hesabın var mı?  ",
                          style: TextStyle(color: kvkk, fontSize: fontsize2),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Giriş yap',
                                style: TextStyle(
                                    color: twitterColor, fontSize: fontsize2)),
                          ],
                        )),
                      ),
                    )
                  ]),
            )));
  }

  Row myline(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            height: 0.8,
            width: MediaQuery.of(context).size.width * 0.3,
            color: kvkk,
          ),
        ),
        Text(
          'veya',
          style: TextStyle(fontSize: fontsize3, color: kvkk),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            height: 0.8,
            width: MediaQuery.of(context).size.width * 0.3,
            color: kvkk,
          ),
        ),
      ],
    );
  }

  Container containerlogin(
          String text, Color textColor, Color containerColor) =>
      Container(
        width: MediaQuery.of(context).size.width * 1,
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(pad2),
          child: Text(
            text,
            style:
                GoogleFonts.cantataOne(fontSize: fontsize2, color: textColor),
          ),
        )),
        decoration: BoxDecoration(
            color: containerColor,
            border: Border.all(color: Colors.black38),
            borderRadius: BorderRadius.all(Radius.circular(circular1))),
      );

  Text textlogin(String text) => Text(
        text,
        style: GoogleFonts.cantataOne(fontSize: fontsize1),
      );
}
