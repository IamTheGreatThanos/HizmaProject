import 'package:flutter/material.dart';
import 'package:hizma_project/components/app_bar.dart';
import '../utils/const.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
              preferredSize: const Size.fromHeight(0), child: buildAppBar('')),
          body: SingleChildScrollView(
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 10,
                color: Colors.white,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Spacer(),
                          SizedBox(
                            height: 45,
                            width: 45,
                            child: Image.asset('assets/icons/ic_support.png'),
                          ),
                        ],
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Image.asset('assets/images/logo.png')),
                      Row(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.42,
                            width: MediaQuery.of(context).size.width * 0.42,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Column(
                                  children: [
                                    const Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SizedBox(
                                        height: 45,
                                        width: 45,
                                        child: Image.asset(
                                            'assets/icons/ic_support.png'),
                                      ),
                                    ),
                                    const Text(
                                      'Отправить посылку',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF4B545A)),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)))),
                          ),
                          Spacer(),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.42,
                            width: MediaQuery.of(context).size.width * 0.42,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Column(
                                  children: [
                                    const Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SizedBox(
                                        height: 45,
                                        width: 45,
                                        child: Image.asset(
                                            'assets/icons/ic_support.png'),
                                      ),
                                    ),
                                    const Text(
                                      'Отправить посылку',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF4B545A)),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)))),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.42,
                            width: MediaQuery.of(context).size.width * 0.42,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Column(
                                  children: [
                                    const Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SizedBox(
                                        height: 45,
                                        width: 45,
                                        child: Image.asset(
                                            'assets/icons/ic_support.png'),
                                      ),
                                    ),
                                    const Text(
                                      'Отправить посылку',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF4B545A)),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)))),
                          ),
                          Spacer(),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.42,
                            width: MediaQuery.of(context).size.width * 0.42,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Column(
                                  children: [
                                    const Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SizedBox(
                                        height: 45,
                                        width: 45,
                                        child: Image.asset(
                                            'assets/icons/ic_support.png'),
                                      ),
                                    ),
                                    const Text(
                                      'Отправить посылку',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF4B545A)),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)))),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
          ),
        ));
  }
}
