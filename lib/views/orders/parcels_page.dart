import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:hizma_project/components/app_bar.dart';

import '../../utils/const.dart';

class ParcelsPage extends StatefulWidget {
  const ParcelsPage({Key? key}) : super(key: key);

  @override
  _ParcelsPageState createState() => _ParcelsPageState();
}

class _ParcelsPageState extends State<ParcelsPage> {
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
                        const Text('Посылки',
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
                                        const Spacer(),
                                        Row(
                                          children: [
                                            const Text("Статус: "),
                                            Text(
                                              "Заключение",
                                              style: TextStyle(
                                                  color: Colors.red[900]),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 0),
                                    child: Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
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
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 3),
                                                      child: SizedBox(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.33,
                                                          height: 25,
                                                          child: const Text(
                                                            "Алматы",
                                                            style: TextStyle(
                                                                fontSize: 16),
                                                          )),
                                                    ),
                                                    SizedBox(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.33,
                                                        height: 22,
                                                        child: const Text(
                                                            "До 22.08.2022")),
                                                    SizedBox(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.33,
                                                        height: 20,
                                                        child: const Text(
                                                          "Москва",
                                                          style: TextStyle(
                                                              fontSize: 16),
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      20, 0, 10, 0),
                                              child: SizedBox(
                                                height: 20,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.33,
                                                child: const Text(
                                                  "Вознограждение",
                                                  style: TextStyle(
                                                      color:
                                                          AppColors.blackColor,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      20, 0, 10, 0),
                                              child: SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.33,
                                                child: const Text(
                                                  "5000 тенге",
                                                  style: TextStyle(
                                                      color:
                                                          AppColors.mainColor,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              5, 0, 5, 0),
                                          child: SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.38,
                                              child: Image.asset(
                                                  'assets/images/logo.jpeg')),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ScrollOnExpand(
                                    scrollOnExpand: true,
                                    scrollOnCollapse: false,
                                    child: Column(
                                      children: [
                                        ExpandablePanel(
                                          theme: const ExpandableThemeData(
                                            headerAlignment:
                                                ExpandablePanelHeaderAlignment
                                                    .center,
                                            tapBodyToCollapse: true,
                                          ),
                                          header: const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 15, vertical: 0),
                                              child: Text(
                                                "Описание",
                                                style: TextStyle(
                                                    color: AppColors.mainColor,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                          collapsed: const Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5),
                                            child: Text(
                                              "100 г, Передать документы и еще много...",
                                              softWrap: true,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          expanded: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                const Text(
                                                  "100 г, Передать документы и еще много вещей которые в коробке",
                                                  style: TextStyle(
                                                    color: AppColors.blackColor,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                                const SizedBox(height: 10),
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.6,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: const [
                                                          Text(
                                                            "Адрес отправителя:",
                                                            style: TextStyle(
                                                                color: AppColors
                                                                    .mainColor,
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                          Text(
                                                            "г. Алматы, улица Новои, дом 37, кв. 10",
                                                            style: TextStyle(
                                                              color: AppColors
                                                                  .blackColor,
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                          SizedBox(height: 10),
                                                          Text(
                                                            "Адрес получателя:",
                                                            style: TextStyle(
                                                                color: AppColors
                                                                    .mainColor,
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                          Text(
                                                            "г. Москва, улица Пушкина, дом 7, кв. 8",
                                                            style: TextStyle(
                                                              color: AppColors
                                                                  .blackColor,
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        print('Map tapped!');
                                                      },
                                                      child: SizedBox(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.2,
                                                          child: Image.asset(
                                                              'assets/icons/ic_map.png')),
                                                    )
                                                  ],
                                                ),
                                                const SizedBox(height: 10),
                                              ],
                                            ),
                                          ),
                                          builder: (_, collapsed, expanded) {
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10,
                                                  right: 10,
                                                  bottom: 10),
                                              child: Expandable(
                                                collapsed: collapsed,
                                                expanded: expanded,
                                                theme:
                                                    const ExpandableThemeData(
                                                        crossFadePoint: 0),
                                              ),
                                            );
                                          },
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: Row(
                                            children: [
                                              const Spacer(),
                                              SizedBox(
                                                height: 40,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.34,
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
                                                    size: 24.0,
                                                  ),
                                                  label: const Text(
                                                    'Чат',
                                                    style: TextStyle(
                                                        color: AppColors
                                                            .blackColor),
                                                  ),
                                                ),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 10),
                                                child: SizedBox(
                                                  height: 30,
                                                  child: VerticalDivider(
                                                    color:
                                                        AppColors.primaryColor,
                                                    thickness: 3,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 40,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.34,
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
                                                    size: 24.0,
                                                  ),
                                                  label: const Text(
                                                    'Принять',
                                                    style: TextStyle(
                                                        color: AppColors
                                                            .blackColor),
                                                  ),
                                                ),
                                              ),
                                              const Spacer(),
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
