import 'package:catalog_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool buttonState = false;
  final _globalKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_globalKey.currentState!.validate()) {
      setState(() {
        buttonState = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        buttonState = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          const SizedBox(height: 50.0),
          Image.asset(
            "assets/images/login.png",
          ),
          const SizedBox(height: 20.0),
          Text(
            'Welcome $name',
            style: const TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(
              40.0,
              20.0,
              40.0,
              0.0,
            ),
            child: SingleChildScrollView(
              child: Form(
                key: _globalKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter User Name or Email',
                        label: Text(
                          'User Name',
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter User Name';
                        } else if (value.length < 2 || value.length > 12) {
                          return 'Name length should be between 2-12';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        value = name;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter password';
                        } else if (value.length <= 5 || value.length >= 13) {
                          return 'Password length should be between 6-12';
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: 'Enter Password',
                        label: Text(
                          'User Password',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(
              60.0,
              10.0,
              10.0,
              0.0,
            ),
            child: Material(
              color: Colors.deepPurpleAccent,
              shadowColor: Colors.green,
              borderRadius: BorderRadius.circular(30.0),
              elevation: 10.0,
              child: InkWell(
                //  splashColor: Colors.red,
                onTap: () => moveToHome(context),
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  width: buttonState ? 50 : 90,
                  height: 50,
                  alignment: Alignment.center,
                  child: buttonState
                      ? const Icon(
                          Icons.done,
                          color: Colors.white,
                          size: 36.0,
                        )
                      : const Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
