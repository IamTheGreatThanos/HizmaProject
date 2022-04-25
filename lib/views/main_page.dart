import 'package:flutter/material.dart';
import 'package:hizma_project/components/app_bar.dart';
import 'package:hizma_project/views/orders/contracts_page.dart';
import 'package:hizma_project/views/orders/create_sending_order_page.dart';
import 'package:hizma_project/views/orders/take_sending_order_page.dart';
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
                // height: MediaQuery.of(context).size.height - 10,
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
                          child: Image.asset('assets/images/logo.jpeg')),
                      Row(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.42,
                            width: MediaQuery.of(context).size.width * 0.42,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const CreateSendingOrderPage()),
                                  );
                                },
                                child: Column(
                                  children: [
                                    const Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SizedBox(
                                        height: 45,
                                        width: 45,
                                        child: Image.asset(
                                            'assets/icons/ic_history.png'),
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
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const TakeSendingOrderPage()),
                                  );
                                },
                                child: Column(
                                  children: [
                                    const Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SizedBox(
                                        height: 45,
                                        width: 45,
                                        child: Image.asset(
                                            'assets/icons/ic_deliver.png'),
                                      ),
                                    ),
                                    const Text(
                                      'Доставить посылку',
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
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ContractsPage()),
                                  );
                                },
                                child: Column(
                                  children: [
                                    const Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SizedBox(
                                        height: 45,
                                        width: 45,
                                        child: Image.asset(
                                            'assets/icons/ic_promo.png'),
                                      ),
                                    ),
                                    const Text(
                                      'Контракты',
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
                          const Spacer(),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.42,
                            width: MediaQuery.of(context).size.width * 0.42,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const TakeSendingOrderPage()),
                                  );
                                },
                                child: Column(
                                  children: [
                                    const Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SizedBox(
                                        height: 45,
                                        width: 45,
                                        child: Image.asset(
                                            'assets/icons/ic_profile.png'),
                                      ),
                                    ),
                                    const Text(
                                      'Профиль',
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
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: const Text(
                            'Новости',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 420,
                        child: ListView(
                            physics: const NeverScrollableScrollPhysics(),
                            children: <Widget>[
                              Card(
                                child: SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    height: 200,
                                    child:
                                        Image.asset('assets/images/logo.jpeg')),
                              ),
                              Card(
                                child: SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    height: 200,
                                    child:
                                        Image.asset('assets/images/logo.jpeg')),
                              ),
                            ]),
                      )
                    ],
                  ),
                )),
          ),
        ));
  }
}
