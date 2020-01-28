import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tassist/services/auth.dart';
import 'package:tassist/ui/root_page.dart';
import 'package:tassist/theme/texts.dart';
// import 'package:tassist/user.dart';
// import 'package:tassist/ui/views/homescreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const String _title = "TallyAssist";

    return StreamProvider<FirebaseUser>.value(
      value: AuthService().user,
      child: MaterialApp(
        title: _title,
        // home: HomeScreen(),
        home: RootPage(),
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            textTheme: TextTheme(title: primaryAppBarTitle),
          ),
          textTheme: TextTheme(
              title: secondaryListTitle,
              body1: secondaryListDisc,
              body2: secondaryListTitle2),
        ),
      ),
    );
  }
}
