import 'package:flutter/material.dart';
import 'package:hizma_project/utils/const.dart';
import '../../components/app_bar.dart';
import 'sign_up_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(),
                      Text(
                        ' Номер телефона'.toUpperCase(),
                        style: const TextStyle(
                            color: AppColors.blackColor,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 15),
                      TextField(
                          keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                            labelText: '',
                            fillColor: Color(0xFFD8E0F2),
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
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
                      const SizedBox(height: 15),
                      Text(
                        ' Пароль'.toUpperCase(),
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(
                                  width: 1, color: AppColors.primaryColor),
                            ),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                borderSide: BorderSide(
                                    width: 1, color: AppColors.blackColor)),
                          ),
                          controller: _passwordController),
                      const SizedBox(height: 40),
                      ElevatedButton(
                          onPressed: () {},
                          child: const Padding(
                            padding: EdgeInsets.all(25),
                            child: Text(
                              'Войти',
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
                            'У вас нет аккаунта? ',
                            style: TextStyle(
                                color: AppColors.mainColor, fontSize: 15),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                      builder: (context) => const SignUpPage()),
                                  (Route<dynamic> route) => false);
                            },
                            child: const Text(
                              'Регистрация',
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
          ),
        ));
  }
}
