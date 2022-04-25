import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import '../../utils/const.dart';

class ContractsPage extends StatefulWidget {
  const ContractsPage({Key? key}) : super(key: key);

  @override
  _ContractsPageState createState() => _ContractsPageState();
}

class _ContractsPageState extends State<ContractsPage> {
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
                color: Colors.white,
                child: Column(children: [
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
                        const SizedBox(
                          width: 25,
                        ),
                        const Spacer(),
                        const Text('Контракты',
                            style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        const Spacer(),
                        const SizedBox(width: 80),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.8,
                      child: ListView.builder(
                        itemBuilder: (BuildContext context, index) {
                          return ExpandableNotifier(
                              child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Card(
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              clipBehavior: Clip.antiAlias,
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20, 20, 20, 5),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Максат'.toUpperCase(),
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        SizedBox(
                                            width: 14,
                                            height: 14,
                                            child: Image.asset(
                                                'assets/icons/ic_checked.png')),
                                        const Spacer(),
                                        Row(
                                          children: [
                                            const Text("Транспорт: "),
                                            Text(
                                              "Машина",
                                              style: TextStyle(
                                                  color: Colors.orange[900]),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 18),
                                    child: Row(
                                      children: [
                                        for (int i = 0; i < 3; i++)
                                          const Icon(
                                            Icons.star_rate,
                                            size: 18,
                                            color: AppColors.primaryColor,
                                          ),
                                        for (int i = 0; i < 2; i++)
                                          const Icon(
                                            Icons.star_rate_outlined,
                                            size: 18,
                                            color: AppColors.primaryColor,
                                          )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      20, 0, 10, 0),
                                              child: SizedBox(
                                                  width: 16,
                                                  height: 70,
                                                  child: Image.asset(
                                                      'assets/icons/ic_route.png')),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 3),
                                                      child: SizedBox(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.35,
                                                          height: 25,
                                                          child: const Text(
                                                            "Алматы",
                                                            style: TextStyle(
                                                                fontSize: 18),
                                                          )),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 3),
                                                      child: SizedBox(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.25,
                                                          height: 25,
                                                          child: const Text(
                                                            "15.03.2022",
                                                            style: TextStyle(
                                                                color: AppColors
                                                                    .mainColor,
                                                                fontSize: 16),
                                                          )),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.35,
                                                        height: 20,
                                                        child: const Text(
                                                          "Москва",
                                                          style: TextStyle(
                                                              fontSize: 18),
                                                        )),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 3),
                                                      child: SizedBox(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.25,
                                                          height: 25,
                                                          child: const Text(
                                                            "15.03.2022",
                                                            style: TextStyle(
                                                                color: AppColors
                                                                    .mainColor,
                                                                fontSize: 16),
                                                          )),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: Row(
                                            children: [
                                              const Spacer(),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              SizedBox(
                                                height: 40,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.26,
                                                child: ElevatedButton.icon(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          primary: Colors.white,
                                                          onPrimary: AppColors
                                                              .mainColor,
                                                          elevation: 0),
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    Icons.phone_rounded,
                                                    size: 18,
                                                  ),
                                                  label: const Text(
                                                    'Звонок',
                                                    style: TextStyle(
                                                        fontSize: 11,
                                                        color: AppColors
                                                            .blackColor),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 30,
                                                child: VerticalDivider(
                                                  color: AppColors.primaryColor,
                                                  thickness: 3,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 40,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.24,
                                                child: ElevatedButton.icon(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          primary: Colors.white,
                                                          onPrimary: AppColors
                                                              .mainColor,
                                                          elevation: 0),
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    Icons.chat,
                                                    size: 18,
                                                  ),
                                                  label: const Text(
                                                    'Чат',
                                                    style: TextStyle(
                                                        fontSize: 11,
                                                        color: AppColors
                                                            .blackColor),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 30,
                                                child: VerticalDivider(
                                                  color: AppColors.primaryColor,
                                                  thickness: 3,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 40,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.26,
                                                child: ElevatedButton.icon(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          primary: Colors.white,
                                                          onPrimary: AppColors
                                                              .mainColor,
                                                          elevation: 0),
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    Icons.check_circle,
                                                    size: 18,
                                                  ),
                                                  label: const Text(
                                                    'Принять',
                                                    style: TextStyle(
                                                        fontSize: 11,
                                                        color: AppColors
                                                            .blackColor),
                                                  ),
                                                ),
                                              ),
                                              const Spacer(),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ));
                        },
                        itemCount: 4,
                        shrinkWrap: true,
                        padding: const EdgeInsets.all(5),
                        scrollDirection: Axis.vertical,
                      ),
                    ),
                  ),
                ])),
          ),
        ));
  }
}
