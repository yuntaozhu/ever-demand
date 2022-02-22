import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop_flutter_mobile/screens/animations/delayed_animation.dart';
import 'package:shop_flutter_mobile/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shop_flutter_mobile/screens/authentification/signup_address1.dart';
import 'package:shop_flutter_mobile/screens/authentification/signup_address2.dart';
// import 'package:shop_flutter_mobile/screens/authentification/signup_thanks.dart';
// import 'package:flutter_signin_button/flutter_signin_button.dart';
// import 'package:shop_flutter_mobile/screens/other/nav.dart';

const customColor = AppColors();

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customColor.dRed,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 60,
            horizontal: 30,
          ),
          child: Column(
            children: [
              DelayedAnimation(
                // this one controls the logo animation
                delay: 100,
                child: Container(
                    alignment: Alignment.center,
                    // height: 50,
                    margin: const EdgeInsets.only(top: 50, bottom: 80),
                    child: Column(
                      children: [
                        Text(AppLocalizations.of(context)!.ever,
                            style: TextStyle(
                              color: customColor.whiteColor,
                              fontFamily: 'PlutoHeavyItalic',
                              fontSize: 80,
                            )),
                        Text(AppLocalizations.of(context)!.logoMotto,
                            style: TextStyle(
                              color: customColor.greyColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    )),
              ),
              DelayedAnimation(
                // this one controls the button animation
                delay: 150,
                child: Container(
                  width: double.infinity,
                  height: 40,
                  margin: const EdgeInsets.only(top: 50),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SignupAdress()));
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          // side: const BorderSide(color: white),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(customColor.everSignin),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      textStyle: MaterialStateProperty.all(
                        const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    child: Text(AppLocalizations.of(context)!.getInByAddress),
                  ),
                ),
              ),
              DelayedAnimation(
                // this one controls the button animation
                delay: 200,
                child: Container(
                  width: double.infinity,
                  height: 40,
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const SignupAdress(),
                              ),
                            );
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                // side: const BorderSide(color: white),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all(
                                customColor.facebookColor),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                            textStyle: MaterialStateProperty.all(
                              const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          label: const Text("Facebook"),
                          icon: const Icon(
                            Icons.facebook,
                            size: 30.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        //Use of SizedBox
                        width: 8,
                      ),
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const SignupAdress2(),
                              ),
                            );
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                // side: const BorderSide(color: white),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all(
                                customColor.googleColor),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                            textStyle: MaterialStateProperty.all(
                              const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          label: const Text("Google"),
                          icon: const Icon(
                            Icons.g_translate,
                            size: 30.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              DelayedAnimation(
                // this one controls the button animation
                delay: 250,
                child: Container(
                  width: double.infinity,
                  height: 50,
                  margin: const EdgeInsets.only(top: 3, bottom: 3),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Flexible(
                          flex: 10, // 50%
                          child: Text(AppLocalizations.of(context)!.or,
                              style: TextStyle(
                                color: customColor.greyColor,
                                fontSize: 14,
                              )),
                        ),
                        const Flexible(
                          flex: 10, // 50%
                          child: Text(" "),
                        ),
                        Flexible(
                          flex: 80, // 50%
                          child: Text(
                            AppLocalizations.of(context)!.signUpByInvite,
                            style: TextStyle(
                              color: customColor.whiteColor,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
              DelayedAnimation(
                // this one controls the button animation
                delay: 300,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Theme(
                    data: ThemeData(
                      primaryColor: customColor.whiteColor,
                      primaryColorDark: customColor.dRed,
                    ),
                    child: TextFormField(
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.text,
                      textAlignVertical: TextAlignVertical.center,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                      decoration: const InputDecoration(
                        //isCollapsed: true,
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                        ),
                        hintText: "Invite Code",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                        labelText: "Invite Code",
                        labelStyle: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
