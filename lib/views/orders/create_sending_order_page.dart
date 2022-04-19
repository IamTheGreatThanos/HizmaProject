import 'package:flutter/material.dart';
import 'package:hizma_project/components/app_bar.dart';

class CreateSendingOrderPage extends StatefulWidget {
  const CreateSendingOrderPage({Key? key}) : super(key: key);

  @override
  _CreateSendingOrderPageState createState() => _CreateSendingOrderPageState();
}

class _CreateSendingOrderPageState extends State<CreateSendingOrderPage> {
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
              child: buildAppBar('Доставить')),
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
