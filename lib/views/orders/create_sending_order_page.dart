import 'package:flutter/material.dart';
import 'package:hizma_project/components/app_bar.dart';

import '../../utils/const.dart';

class CreateSendingOrderPage extends StatefulWidget {
  const CreateSendingOrderPage({Key? key}) : super(key: key);

  @override
  _CreateSendingOrderPageState createState() => _CreateSendingOrderPageState();
}

class _CreateSendingOrderPageState extends State<CreateSendingOrderPage> {
  final TextEditingController _fromController = TextEditingController();
  final TextEditingController _whereController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _imageController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _senderAddressController =
      TextEditingController();
  final TextEditingController _receiverAddressController =
      TextEditingController();
  final TextEditingController _receiverInfoController = TextEditingController();

  bool isDoorToDoor = false;

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
              // height: MediaQuery.of(context).size.height - 100,
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
                                  child:
                                      Image.asset('assets/icons/ic_route.png')),
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.68,
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
                                  width:
                                      MediaQuery.of(context).size.width * 0.68,
                                  child: const Divider(
                                    color: AppColors.primaryColor,
                                    thickness: 2,
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.68,
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 20, 0, 10),
                        child: Image.asset(
                          'assets/icons/ic_bg.png',
                          width: 35,
                          height: 35,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 20, 0, 5),
                            child: SizedBox(
                              child: Text(
                                'Описание'.toUpperCase(),
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.blackColor),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.68,
                            height: 30,
                            child: TextField(
                                decoration: const InputDecoration(
                                  hintStyle:
                                      TextStyle(color: AppColors.mainColor),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  hintText: "Детали посылки",
                                  labelText: '',
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: InputBorder.none,
                                ),
                                controller: _descriptionController),
                          ),
                        ],
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
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 0, 5),
                        child: Image.asset(
                          'assets/icons/ic_bg.png',
                          width: 35,
                          height: 35,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                            child: SizedBox(
                              child: Text(
                                'Фото'.toUpperCase(),
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.blackColor),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.68,
                            height: 30,
                            child: TextField(
                                decoration: const InputDecoration(
                                  hintStyle:
                                      TextStyle(color: AppColors.mainColor),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  hintText: "Сфотографируйте посылку",
                                  labelText: '',
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: InputBorder.none,
                                ),
                                controller: _imageController),
                          ),
                        ],
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
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 0, 5),
                        child: Image.asset(
                          'assets/icons/ic_bg.png',
                          width: 35,
                          height: 35,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                            child: SizedBox(
                              child: Text(
                                'Цена'.toUpperCase(),
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.blackColor),
                              ),
                            ),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.68,
                              height: 30,
                              child: TextField(
                                  decoration: const InputDecoration(
                                    hintStyle:
                                        TextStyle(color: AppColors.mainColor),
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                    hintText: "Укажите цену",
                                    labelText: '',
                                    fillColor: Colors.white,
                                    filled: true,
                                    border: InputBorder.none,
                                  ),
                                  controller: _priceController)),
                        ],
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
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 0, 5),
                        child: Image.asset(
                          'assets/icons/ic_bg.png',
                          width: 35,
                          height: 35,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                                child: SizedBox(
                                  child: Text(
                                    'От двери до двери'.toUpperCase(),
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.blackColor),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Switch(
                                value: isDoorToDoor,
                                onChanged: (value) {
                                  setState(() {
                                    isDoorToDoor = value;
                                  });
                                },
                                activeColor: AppColors.mainColor,
                              )
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.68,
                            height: 30,
                            child: TextField(
                                decoration: const InputDecoration(
                                  hintStyle:
                                      TextStyle(color: AppColors.mainColor),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  hintText: "Отправитель: улица, дом, номер",
                                  labelText: '',
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: InputBorder.none,
                                ),
                                controller: _senderAddressController),
                          ),
                        ],
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
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.68,
                      height: 30,
                      child: TextField(
                          decoration: const InputDecoration(
                            hintStyle: TextStyle(color: AppColors.mainColor),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            hintText: "Получатель: улица, дом, номер",
                            labelText: '',
                            fillColor: Colors.white,
                            filled: true,
                            border: InputBorder.none,
                          ),
                          controller: _receiverAddressController),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 0, 5),
                        child: Image.asset(
                          'assets/icons/ic_bg.png',
                          width: 35,
                          height: 35,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                            child: SizedBox(
                              child: Text(
                                'Данные получателя'.toUpperCase(),
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.blackColor),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.68,
                            height: 30,
                            child: TextField(
                                decoration: const InputDecoration(
                                  hintStyle:
                                      TextStyle(color: AppColors.mainColor),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  hintText: "Имя, номер",
                                  labelText: '',
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: InputBorder.none,
                                ),
                                controller: _receiverInfoController),
                          ),
                        ],
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
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  content: const Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 40),
                                    child: Text(
                                        "Ваша заявка принята Ожидайте сообщенте от курьеров!",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  actions: [
                                    const Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 20),
                                      child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.30,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const Padding(
                                            padding: EdgeInsets.all(5),
                                            child: Text(
                                              'Хорошо',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                              primary: AppColors.mainColor,
                                              minimumSize:
                                                  const Size.fromHeight(55),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15))),
                                        ),
                                      ),
                                    ),
                                    const Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 20),
                                      child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.30,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const Padding(
                                            padding: EdgeInsets.all(5),
                                            child: Text(
                                              'Еще раз',
                                              style: TextStyle(
                                                  color: AppColors.blackColor,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.white,
                                              minimumSize:
                                                  const Size.fromHeight(55),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15))),
                                        ),
                                      ),
                                    ),
                                    const Spacer(),
                                  ],
                                );
                              });
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(25),
                          child: Text(
                            'Создать заявку',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: AppColors.mainColor,
                            minimumSize: const Size.fromHeight(50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)))),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
