import 'package:accountui/model/heading.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({super.key});

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 231, 231),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leadingWidth: 60,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                border: Border.all(
                    color: Colors.grey, style: BorderStyle.solid, width: .5)),
            child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const FaIcon(
                  FontAwesomeIcons.chevronLeft,
                  size: 16,
                  color: Color.fromARGB(255, 44, 43, 43),
                )),
          ),
        ),
        title: const Text('Transfer'),
        titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 22),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // padding: const EdgeInsets.all(10),
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'OverView',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                elevation: 5,
                type: MaterialType.card,
                borderRadius: BorderRadius.circular(5),
                child: SizedBox(
                  height: 120,
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 16,
                              backgroundColor: Color.fromARGB(255, 33, 54, 243),
                              child: Icon(
                                Icons.arrow_upward_outlined,
                                color: Colors.white,
                                size: 16,
                              ),
                            ),
                            Text(
                              '+12.5%',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 33, 54, 243)),
                            )
                          ],
                        ),
                        Text.rich(TextSpan(children: [
                          TextSpan(
                            text: '\$54,270.000\n',
                            style: TextStyle(
                                fontSize: 18.5, fontWeight: FontWeight.w600),
                          ),
                          TextSpan(
                              text: 'Received',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey))
                        ])),
                      ],
                    ),
                  ),
                ),
              ),
              Material(
                elevation: 5,
                type: MaterialType.card,
                borderRadius: BorderRadius.circular(5),
                child: SizedBox(
                  height: 120,
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 16,
                              backgroundColor:
                                  Color.fromARGB(255, 214, 226, 148),
                              child: Icon(
                                Icons.arrow_downward,
                                size: 18,
                              ),
                            ),
                            Text(
                              '+12.5%',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 33, 54, 243)),
                            )
                          ],
                        ),
                        Text.rich(TextSpan(children: [
                          TextSpan(
                            text: '\$54,270.000\n',
                            style: TextStyle(
                                fontSize: 18.5, fontWeight: FontWeight.w600),
                          ),
                          TextSpan(
                              text: 'Sent',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey))
                        ])),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Center(
            child: Container(
              height: 120,
              padding: const EdgeInsets.all(8),
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recent Transfers',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 18),
                      ),
                      Text(
                        'View all',
                        style:
                            TextStyle(color: Color.fromARGB(255, 33, 54, 243)),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.73,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: image.length,
                          separatorBuilder: (context, index) => const SizedBox(
                            width: 5,
                          ),
                          itemBuilder: (context, index) {
                            return CircleAvatar(
                              radius: 22,
                              child: Image.asset(
                                image[index],
                                height: 24,
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color.fromARGB(255, 204, 212, 238)),
                        child: CustomPaint(
                          painter: DottedBorder(
                              numberOfStories: 15, spaceLength: 15),
                          child: const Icon(
                            Icons.add,
                            color: Color.fromARGB(
                              255,
                              63,
                              90,
                              247,
                            ),
                            size: 18,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Favorite',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
          Expanded(
            // height: 300,
            child: ListView.separated(
              separatorBuilder: (context, index) => const Divider(),
              itemCount: image.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    child: Image.asset(image[index]),
                  ),
                  title: Text(people[index]['name'].toString()),
                  subtitle: Text(people[index]['job'].toString()),
                  trailing: SizedBox(
                    width: 70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '**** ',
                            style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold, letterSpacing: 2),
                          ),
                          Text(
                            '0705',
                            style: TextStyle(fontSize: 14, letterSpacing: -1),
                          ),
                        ],
                      ),
                        Stack(
                        clipBehavior: Clip.none,
                        alignment:Alignment.center ,
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
                    ]),
                  ),
                );
              },
            ),
          ),
          Center(
            child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 33, 47, 243))),
                onPressed: () {},
                child: const Text(
                  ' + Add New',
                  style: TextStyle(color: Colors.white),
                )),
          ),
          const SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}
