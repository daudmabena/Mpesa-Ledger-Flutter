import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:mpesa_ledger_flutter/app.dart';
import 'package:mpesa_ledger_flutter/blocs/firebase/firebase_auth_bloc.dart';
import 'package:mpesa_ledger_flutter/blocs/query_sms/query_sms_bloc.dart';
import 'package:mpesa_ledger_flutter/blocs/shared_preferences/shared_preferences_bloc.dart';
import 'package:mpesa_ledger_flutter/screens/intro/intro_walk_through_screen.dart';
import 'package:mpesa_ledger_flutter/services/firebase/firebase_auth.dart';

class SplashScreen extends StatefulWidget {
  final FirebaseAuthBloc firebaseAuthBloc = FirebaseAuthBloc();
  final FirebaseAuthProvider onAuthStateChanged = FirebaseAuthProvider();
  final QuerySMSBloc querySMSBloc = QuerySMSBloc();
  final SharedPreferencesBloc sharedPrefBloc = SharedPreferencesBloc();
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    widget.firebaseAuthBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    widget.sharedPrefBloc.sharedPreferencesStream.listen((data) {
      if (data.isDBCreated) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (route) => App()),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (route) => IntroWalkThrough()),
        );
      }
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "TEST",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 45.0),
            ),
            Text(
              "TEST",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 45.0),
            ),
            SizedBox(
              height: 20,
            ),
            StreamBuilder(
              stream: widget.onAuthStateChanged.onAuthStateChanged,
              builder:
                  (BuildContext context, AsyncSnapshot<FirebaseUser> snapshot) {
                if (snapshot.data == null) {
                  return Column(
                    children: <Widget>[
                      GoogleSignInButton(
                        onPressed: () {
                          widget.firebaseAuthBloc.signInSink.add(null);
                        },
                      ),
                    ],
                  );
                } else {
                  widget.sharedPrefBloc.getSharedPreferencesEventSink.add(null);
                  return CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}