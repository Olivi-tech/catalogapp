import 'package:catalog_app/pages/home_page.dart';
import 'package:catalog_app/utils/routes.dart';
import 'package:catalog_app/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:catalog_app/pages/login_page.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(),
      //  primaryTextTheme: GoogleFonts.akayaTelivigalaTextTheme()),
      darkTheme: MyTheme.darkTheme(),
      routes: {
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) =>  const HomePage(),
      },
    ));
