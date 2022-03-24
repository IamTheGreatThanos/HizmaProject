import 'package:flutter/material.dart';

import '../../components/app_bar.dart';
import '../../utils/const.dart';
import 'sign_in_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();

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
              child: buildAppBar('Регистрация')),
          body: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    Text(
                      ' ФИО'.toUpperCase(),
                      style: const TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15),
                    TextField(
                        decoration: const InputDecoration(
                          labelText: '',
                          fillColor: Color(0xFFD8E0F2),
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(
                                width: 1, color: AppColors.primaryColor),
                          ),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(
                                  width: 1, color: AppColors.blackColor)),
                        ),
                        controller: _fullNameController),
                    const SizedBox(height: 15),
                    Text(
                      ' Телефон'.toUpperCase(),
                      style: const TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15),
                    TextField(
                        decoration: const InputDecoration(
                          labelText: '',
                          fillColor: Color(0xFFD8E0F2),
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(
                                width: 1, color: AppColors.primaryColor),
                          ),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(
                                  width: 1, color: AppColors.blackColor)),
                        ),
                        controller: _numberController),
                    const SizedBox(height: 40),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.all(25),
                          child: Text(
                            'СМС код',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: AppColors.mainColor,
                            minimumSize: const Size.fromHeight(50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)))),
                    const SizedBox(height: 60),
                    const Spacer(),
                    Row(
                      children: [
                        const Spacer(),
                        const Text(
                          'У вас уже есть аккаунт? ',
                          style: TextStyle(
                              color: AppColors.mainColor, fontSize: 15),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                    builder: (context) => const SignInPage()),
                                (Route<dynamic> route) => false);
                          },
                          child: const Text(
                            'Войти',
                            style: TextStyle(
                                color: AppColors.mainColor,
                                fontSize: 15,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              )),
        ));
  }
}
