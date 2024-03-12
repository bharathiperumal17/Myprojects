import 'package:accountui/model/heading.dart';
import 'package:accountui/screens/transferpage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  List<bool> countcheck =
      List.generate(hortizontalscroll.length, (index) => false);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                pinned: true,
                expandedHeight: 170,
                collapsedHeight: 60,
                backgroundColor: Colors.black,
                leadingWidth: 70,
                floating: true,
                leading: CircleAvatar(
                  maxRadius: 100,
                  backgroundColor: Colors.yellow.shade100,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(
                      'assets/images/happy.png',
                      height: 45,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                title: RichText(
                  text: const TextSpan(children: [
                    TextSpan(
                      text: 'Hello, ',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 20,
                      ),
                    ),
                    TextSpan(
                      text: 'Mayad!',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )
                  ]),
                ),
                actions: [
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey.shade700,
                      ),
                      child: IconButton(
                          onPressed: () => Navigator.push(
                              context, MaterialPageRoute(builder: (context) => const TransferPage(),)),
                          icon:const  FaIcon(FontAwesomeIcons.windows,color: Colors.white,)))
                ],
                flexibleSpace: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  children: const [
                    SizedBox(
                      height: 75,
                    ),
                    PreferredSize(
                      preferredSize: Size(double.maxFinite, 70),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '\$65,927.00',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 34,
                              ),
                            ),
                            Text(
                              'Your balance +007% from last month',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 15,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ];
          },
          body: ListView(
            clipBehavior: Clip.none,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 15, left: 8),
                child: Column(
                  children: [
                    SizedBox(
                      height: 45,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: hortizontalscroll.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                countcheck = List.generate(
                                  hortizontalscroll.length,
                                  (idx) => idx == index,
                                );
                              });
                            },
                            child: Container(
                              height: 40,
                              padding: const EdgeInsets.all(8),
                              margin: const EdgeInsets.all(2),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: countcheck[index] ? Colors.black : null,
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(
                                  style: BorderStyle.solid,
                                  color: Colors.grey,
                                  width: 1,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    hortizontalscroll[index][0],
                                    style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Visibility(
                                    visible: countcheck[index],
                                    child: CircleAvatar(
                                      backgroundColor: Colors.grey.shade800,
                                      child: Text(
                                        hortizontalscroll[index][1].toString(),
                                        style: const TextStyle(
                                          color: Colors.white54,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 310,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    clipBehavior: Clip.none,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                          height: 80,
                          padding: const EdgeInsets.fromLTRB(20, 4, 15, 22),
                          width: MediaQuery.of(context).size.width * 0.95,
                          decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(20)),
                            color: Color.fromARGB(255, 227, 231, 162),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Add New Card',
                                style: TextStyle(
                                  color: Colors.grey.shade900,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              CircleAvatar(
                                maxRadius: 16,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.grey.shade700,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -65,
                        child: Container(
                          height: 90,
                          width: MediaQuery.of(context).size.width * 0.95,
                          padding: const EdgeInsets.fromLTRB(20, 0, 15, 38),
                          decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(20)),
                            color: Color.fromARGB(255, 26, 77, 185),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'VISA',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Container(
                                height: 33,
                                width: 33,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                    color: Colors.white,
                                    style: BorderStyle.solid,
                                    width: 0.7,
                                  ),
                                ),
                                child: const Icon(
                                  Icons.arrow_outward_outlined,
                                  size: 17,
                                  color: Colors.white60,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -205,
                        child: Container(
                          height: 180,
                          width: MediaQuery.of(context).size.width * 0.95,
                          padding: const EdgeInsets.fromLTRB(20, 18, 15, 20),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20),
                              bottom: Radius.circular(20),
                            ),
                            color: Color.fromARGB(255, 10, 10, 7),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      const CircleAvatar(
                                        backgroundColor: Colors.red,
                                        radius: 8,
                                      ),
                                      Positioned(
                                        left: 10,
                                        child: CircleAvatar(
                                          backgroundColor:
                                              Colors.orange.withOpacity(0.85),
                                          radius: 8,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 33,
                                    width: 33,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                        color: Colors.white,
                                        style: BorderStyle.solid,
                                        width: 0.7,
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.arrow_outward_outlined,
                                      size: 17,
                                      color: Colors.white60,
                                    ),
                                  ),
                                ],
                              ),
                              const Row(
                                children: [
                                  Text(
                                    '**** **** *** ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        letterSpacing: 2),
                                  ),
                                  Text(
                                    '0705',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 34,
                                        letterSpacing: -1),
                                  ),
                                ],
                              ),
                              const Row(
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                            text: 'Name\n',
                                            style: TextStyle(
                                                color: Colors.white60)),
                                        TextSpan(
                                          text: 'Mayad Ahmed      ',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                            text: 'Exp date\n',
                                            style: TextStyle(
                                                color: Colors.white60)),
                                        TextSpan(
                                          text: '08/28',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 6, 0, 10),
                child: Text(
                  'Recent Activity',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Material(
                        borderRadius: BorderRadius.circular(10),
                        type: MaterialType.card,
                        elevation: 10,
                        child: SizedBox(
                          height: 200,
                          width: MediaQuery.of(context).size.width * 0.42,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 60,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: const Color.fromARGB(
                                          255, 216, 215, 215)),
                                  child: const Center(
                                      child: FaIcon(
                                    FontAwesomeIcons.coins,
                                  )),
                                ),
                                const Text.rich(
                                    textAlign: TextAlign.center,
                                    TextSpan(children: [
                                      TextSpan(
                                        text: '\$23,000\n',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800),
                                      ),
                                      TextSpan(
                                        text: 'Monthly Salary',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey),
                                      )
                                    ])),
                                const Text.rich(TextSpan(children: [
                                  TextSpan(
                                    text: '\$2000.000',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w800),
                                  ),
                                  TextSpan(
                                    text: '/year',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey),
                                  )
                                ]))
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Material(
                        borderRadius: BorderRadius.circular(10),
                        elevation: 10,
                        type: MaterialType.card,
                        child: SizedBox(
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.42,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(children: [
                                    WidgetSpan(
                                        child: Image.asset(
                                      'assets/images/insta.png',
                                      height: 20,
                                    )),
                                    const WidgetSpan(
                                      child: VerticalDivider(
                                        width:
                                            8, // Adjust the width as needed for spacing
                                        color: Colors
                                            .transparent, // Set color to transparent to make it invisible
                                      ),
                                    ),
                                    const TextSpan(
                                        text: 'Instagram',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600))
                                  ])),
                              const Text.rich(
                                  textAlign: TextAlign.center,
                                  TextSpan(children: [
                                    TextSpan(
                                      text: '-\$345.00\n',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w800),
                                    ),
                                    TextSpan(
                                      text: 'Monthly subscripition',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey),
                                    )
                                  ])),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(10),
                        elevation: 10,
                        type: MaterialType.card,
                        child: SizedBox(
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.42,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                'Get Recepits',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                              Container(
                                height: 50,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: const Color.fromARGB(
                                        255, 216, 215, 215)),
                                child: const Center(
                                    child: FaIcon(
                                  FontAwesomeIcons.receipt,
                                )),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Material(
                        borderRadius: BorderRadius.circular(10),
                        elevation: 10,
                        type: MaterialType.card,
                        child: SizedBox(
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.42,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(10),
                        elevation: 10,
                        type: MaterialType.card,
                        child: SizedBox(
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.42,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Material(
                        borderRadius: BorderRadius.circular(10),
                        type: MaterialType.card,
                        elevation: 10,
                        child: SizedBox(
                          height: 130,
                          width: MediaQuery.of(context).size.width * 0.42,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Material(
                        borderRadius: BorderRadius.circular(10),
                        elevation: 10,
                        type: MaterialType.card,
                        child: SizedBox(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.42,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
