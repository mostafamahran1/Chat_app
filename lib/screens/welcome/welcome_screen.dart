import 'package:chat/screens/signinOrsignup/signin_or_signup_screen.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Spacer(flex: 2),
            Image.asset("assets/images/welcome_image.png"),
            Spacer(flex: 3),
            Text("welcome to our freedom \n messaging app" ,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline5.copyWith(fontWeight: FontWeight.bold),
            ),
            Spacer(flex: 2),
            Text(" freedom talk any person of your \n another language",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyText1.color.withOpacity(0.64),
              ),
            ),
            Spacer(flex: 4),
            FittedBox(
              child: TextButton(
                  onPressed: () =>
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => SignupOrSignoutScreen(),
                    ),),
                  child: Row(
                    children: [
                      Text('Sign up',
                        style: Theme.of(context).textTheme.headline6.copyWith(
                          color: Theme.of(context).textTheme.bodyText1.color.withOpacity(0.8),
                        ),
                      ),
                      SizedBox(width: kDefaultPadding / 4,),
                      Icon(Icons.arrow_forward_ios,
                        size: 18,
                        color: Theme.of(context).textTheme.bodyText1.color.withOpacity(0.8),
                      ),
                    ],
                  ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),

    );
  }
}
