import 'package:flutter/material.dart';
import 'package:hizma_project/components/app_bar.dart';
import 'package:hizma_project/utils/const.dart';
import 'package:hizma_project/views/authorization/set_password_page.dart';
import 'package:pin_code_fields/pin_code_fields.dart' as pin;
import 'dart:async';

class VerificationPage extends StatefulWidget {
  const VerificationPage({Key? key}) : super(key: key);
  // VerificationPage(this.product);
  // final Product product;

  @override
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  TextEditingController textEditingController = TextEditingController();
  late Timer _timer;
  String _time = "00";
  String phoneNumber = '+7 777 7777777';

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void startTimer() {
    int _start = 60;
    const oneSec = const Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
            _start < 10 ? _time = "0${_start}" : _time = "$_start";
          });
        }
      },
    );
  }

  void sendVerificationCode() async {
    if (textEditingController.text == '1234') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SetPasswordPage()),
      );
    } else {
      print(textEditingController.text);
    }
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
              child: buildAppBar('???????????????? ????????')),
          body: SingleChildScrollView(
            child: Container(
                height: MediaQuery.of(context).size.height,
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(height: 40),
                    Center(
                      child: SizedBox(
                          width: 200,
                          child: Text(
                              "?????? ?????? ?????????????????? ???? ?????????? ${phoneNumber} ?????????? SMS-??????????????????",
                              style: TextStyle(
                                  color: AppColors.mainColor, fontSize: 15),
                              textAlign: TextAlign.center)),
                    ),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 60, vertical: 20),
                      child: pinCodeTextFiled(context),
                    ),
                    SizedBox(height: 40),
                    Center(
                        child: _time != "00"
                            ? Text(
                                "???????????????????? ???????????????? ?????????? 00:$_time",
                                style: const TextStyle(
                                    color: AppColors.mainColor, fontSize: 15),
                              )
                            : GestureDetector(
                                onTap: () {
                                  startTimer();
                                },
                                child: const Text(
                                  "???????????????? ?????????? ??????",
                                  style: TextStyle(
                                      color: AppColors.mainColor,
                                      fontSize: 15,
                                      decoration: TextDecoration.underline),
                                ),
                              )),
                  ],
                )),
          ),
        ));
  }

  Widget pinCodeTextFiled(BuildContext context) {
    return pin.PinCodeTextField(
      appContext: context,
      length: 4,
      obscureText: false,
      keyboardType: TextInputType.number,
      cursorColor: AppColors.mainColor,
      animationType: pin.AnimationType.fade,
      pinTheme: pin.PinTheme(
          shape: pin.PinCodeFieldShape.underline,
          borderRadius: BorderRadius.circular(5),
          fieldHeight: 65,
          fieldWidth: 55,
          inactiveColor: AppColors.primaryColor,
          inactiveFillColor: Colors.white,
          activeFillColor: Colors.white,
          selectedFillColor: Colors.white,
          selectedColor: AppColors.mainColor,
          activeColor: AppColors.mainColor,
          borderWidth: 2),
      animationDuration: Duration(milliseconds: 300),
      enableActiveFill: true,
      controller: textEditingController,
      onCompleted: (value) {
        sendVerificationCode();
      },
      onChanged: (value) {},
      beforeTextPaste: (text) {
        print("Allowing to paste $text");
        return true;
      },
    );
  }
}
