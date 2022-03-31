import 'package:flutter/material.dart';
import 'package:hizma_project/components/app_bar.dart';

class JustPage extends StatefulWidget {
  const JustPage({Key? key}) : super(key: key);
  // JustPage(this.product);
  // final Product product;

  @override
  _JustPageState createState() => _JustPageState();
}

class _JustPageState extends State<JustPage> {
  @override
  void initState() {
    super.initState();
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
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(60),
              child: buildAppBar('Вход')),
          body: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 100,
              color: Colors.white,
              // child:
            ),
          ),
        ));
  }
}
