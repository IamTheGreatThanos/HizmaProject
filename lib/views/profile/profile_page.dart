import 'package:flutter/material.dart';
import 'package:hizma_project/components/app_bar.dart';
import '../../utils/const.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isNotification = true;

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
                height: MediaQuery.of(context).size.height + 100,
                color: Colors.white,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
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
                          const Spacer(),
                          const Text('Профиль',
                              style: TextStyle(
                                  color: AppColors.blackColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: GestureDetector(
                              onTap: () {
                                print('Edit!');
                              },
                              child: SizedBox(
                                width: 25,
                                child: Image.asset(
                                  'assets/icons/ic_edit.png',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                        width: 120,
                        child: Image.asset('assets/images/ava.png')),
                    const SizedBox(height: 20),
                    const Text(
                      'Максат',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          elevation: 3,
                          child: Column(
                            children: [
                              const SizedBox(height: 20),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(30, 0, 0, 5),
                                    child: Image.asset(
                                      'assets/icons/ic_phone.png',
                                      width: 35,
                                      height: 35,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                                    child: SizedBox(
                                      child: Text(
                                        '+7 (747) 785 45 45',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: AppColors.blackColor),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.7,
                                child: const Divider(
                                  color: AppColors.primaryColor,
                                  thickness: 1,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(30, 0, 0, 5),
                                    child: Image.asset(
                                      'assets/icons/ic_wallet.png',
                                      width: 35,
                                      height: 35,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                                    child: SizedBox(
                                      child: Text(
                                        '54 000 тенге',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: AppColors.blackColor),
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 30),
                                    child: SizedBox(
                                      height: 40,
                                      width: MediaQuery.of(context).size.width *
                                          0.25,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.white,
                                            elevation: 2),
                                        onPressed: () {
                                          print("Vivod!");
                                        },
                                        child: const Text(
                                          'Вывод',
                                          style: TextStyle(
                                              color: AppColors.mainColor,
                                              fontSize: 16),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.7,
                                child: const Divider(
                                  color: AppColors.primaryColor,
                                  thickness: 1,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(30, 0, 0, 5),
                                    child: Image.asset(
                                      'assets/icons/ic_payment.png',
                                      width: 35,
                                      height: 35,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 0, 5),
                                    child: Image.asset(
                                      'assets/icons/ic_mastercard.png',
                                      width: 35,
                                      height: 35,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                                    child: SizedBox(
                                      child: Text(
                                        '**** 5493',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: AppColors.blackColor),
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(5, 0, 30, 5),
                                    child: GestureDetector(
                                      onTap: () {
                                        print("Plus!");
                                      },
                                      child: Image.asset(
                                        'assets/icons/ic_plus.png',
                                        width: 35,
                                        height: 35,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                            ],
                          )),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(40),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Уведомление:",
                                  style: TextStyle(
                                      color: AppColors.blackColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.58,
                                child: const Text(
                                  'Для получения сообщений курьера',
                                  style: TextStyle(color: AppColors.mainColor),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Switch(
                            value: isNotification,
                            onChanged: (value) {
                              setState(() {
                                isNotification = value;
                              });
                            },
                            activeColor: AppColors.primaryColor,
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ));
  }
}
