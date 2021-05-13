import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/text_field_widget.dart';
import '../components/circular_button_widget.dart';

class SigninScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bg.jpg'),
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 26),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        'SIGN IN',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      Text(
                        'SIGN UP',
                        style: Theme.of(context).textTheme.button,
                      ),
                    ],
                  ),
                  Spacer(),
                  TextFieldWidget(
                    hintText: 'Email Address',
                    icon: Icons.alternate_email,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFieldWidget(
                    hintText: 'Password',
                    icon: Icons.lock,
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: Row(
                      children: [
                        CircularButtonWidget(
                          icon: Icons.android,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        CircularButtonWidget(
                          icon: Icons.chat,
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: kPrimaryColor,
                          ),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
