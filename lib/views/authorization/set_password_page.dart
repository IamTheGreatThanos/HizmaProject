import 'package:flutter/material.dart';
import 'package:hizma_project/components/app_bar.dart';
import 'package:hizma_project/utils/const.dart';
import 'package:hizma_project/views/authorization/sign_in_page.dart';
import 'package:hizma_project/views/authorization/verification_page.dart';

class SetPasswordPage extends StatefulWidget {
  const SetPasswordPage({Key? key}) : super(key: key);

  @override
  _SetPasswordPageState createState() => _SetPasswordPageState();
}

class _SetPasswordPageState extends State<SetPasswordPage> {
  final TextEditingController _password1Controller = TextEditingController();
  final TextEditingController _password2Controller = TextEditingController();
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
                      ' Придумайте пароль'.toUpperCase(),
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
                        controller: _password1Controller),
                    const SizedBox(height: 15),
                    Text(
                      ' Повторите пароль'.toUpperCase(),
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
                        controller: _password2Controller),
                    const SizedBox(height: 40),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const VerificationPage()),
                          );
                        },
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
