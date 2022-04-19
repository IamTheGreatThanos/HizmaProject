import 'package:flutter/material.dart';
import 'authorization/sign_in_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    checkLogin();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Scaffold(
          body: Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Center(child: Image.asset('assets/images/logo.jpeg'))),
        ));
  }

  void checkLogin() async {
    await Future.delayed(const Duration(seconds: 3));

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SignInPage()),
    );
  }
}
