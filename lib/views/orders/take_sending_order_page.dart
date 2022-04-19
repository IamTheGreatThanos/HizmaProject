import 'package:flutter/material.dart';
import 'package:hizma_project/components/app_bar.dart';

import '../../utils/const.dart';

class TakeSendingOrderPage extends StatefulWidget {
  const TakeSendingOrderPage({Key? key}) : super(key: key);

  @override
  _TakeSendingOrderPageState createState() => _TakeSendingOrderPageState();
}

class _TakeSendingOrderPageState extends State<TakeSendingOrderPage> {
  final TextEditingController _fromController = TextEditingController();
  final TextEditingController _whereController = TextEditingController();
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
          body: SingleChildScrollView(
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 100,
                color: Colors.white,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 55,
                              width: 55,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(40))),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.only(left: 4),
                                    child: Icon(
                                      Icons.arrow_back_ios,
                                      color: Colors.black,
                                    ),
                                  ))),
                          const SizedBox(
                            width: 25,
                          ),
                          const Spacer(),
                          const Text('Доставить',
                              style: TextStyle(
                                  color: AppColors.blackColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          const Spacer(),
                          const SizedBox(width: 80),
                        ],
                      ),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Image.asset('assets/images/logo.jpeg')),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          elevation: 3,
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 20, 10, 20),
                                child: SizedBox(
                                    width: 20,
                                    height: 80,
                                    child: Image.asset(
                                        'assets/icons/ic_route.png')),
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.68,
                                    height: 40,
                                    child: TextField(
                                        decoration: const InputDecoration(
                                          floatingLabelBehavior:
                                              FloatingLabelBehavior.always,
                                          hintText: "Откуда",
                                          labelText: '',
                                          fillColor: Colors.white,
                                          filled: true,
                                          border: InputBorder.none,
                                        ),
                                        controller: _fromController),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.68,
                                    child: const Divider(
                                      color: AppColors.primaryColor,
                                      thickness: 2,
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.68,
                                    height: 40,
                                    child: TextField(
                                        decoration: const InputDecoration(
                                          floatingLabelBehavior:
                                              FloatingLabelBehavior.always,
                                          hintText: "Куда",
                                          labelText: '',
                                          fillColor: Colors.white,
                                          filled: true,
                                          border: InputBorder.none,
                                        ),
                                        controller: _whereController),
                                  ),
                                ],
                              )
                            ],
                          )),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Text(
                        'Детали'.toUpperCase(),
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: AppColors.mainColor),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 20, 0, 10),
                          child: Image.asset(
                            'assets/icons/ic_date_from.png',
                            width: 40,
                            height: 40,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.68,
                          height: 50,
                          child: TextField(
                              decoration: const InputDecoration(
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                hintText: "Откуда",
                                labelText: '',
                                fillColor: Colors.white,
                                filled: true,
                                border: InputBorder.none,
                              ),
                              controller: _fromController),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: const Divider(
                        color: AppColors.primaryColor,
                        thickness: 2,
                      ),
                    ),
                  ],
                )),
          ),
        ));
  }
}
