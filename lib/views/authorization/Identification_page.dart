import 'package:flutter/material.dart';
import 'package:hizma_project/components/app_bar.dart';
import 'package:hizma_project/utils/const.dart';
import 'package:hizma_project/views/main_page.dart';

class IdentificationPage extends StatefulWidget {
  const IdentificationPage({Key? key}) : super(key: key);

  @override
  _IdentificationPageState createState() => _IdentificationPageState();
}

class _IdentificationPageState extends State<IdentificationPage> {
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
              child: buildAppBar('Идентификация')),
          body: SingleChildScrollView(
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 100,
                color: Colors.white,
                child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 30),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Container(
                              width: 200,
                              height: 200,
                              decoration: BoxDecoration(
                                  color: Colors.indigo[100],
                                  border: Border.all(
                                    color: AppColors.primaryColor,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(100)),
                              // child: Image.network(''),
                            )),
                        const Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            'Сфотографируйтесь держа удостоверение перед собой',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                          child: Text(
                            'Должно быть видно лицо и документ вместе',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 15),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 60,
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Сфоткаться',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      primary: AppColors.mainColor,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)))),
                            ),
                            const Spacer(),
                            SizedBox(
                              height: 60,
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const MainPage()),
                                    );
                                  },
                                  child: const Text(
                                    'Позже',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.mainColor),
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
                    ))),
          ),
        ));
  }
}
