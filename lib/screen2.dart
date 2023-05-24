import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  List title = [
    "Holix",
    "Never BE Like You",
    "Unavaliable",
    "Numb& Getting Colder",
    "Say it",
  ];
  List subTitle = [
    "Fiume",
    "Fiume x Kia",
    "Davido",
    "Fiume x Kucha",
    "Fiume",
  ];
  List audiostatus = [false, false, false, false, true];
  bool value2 = true;

  @override
  Widget build(BuildContext context) {
    int number1 = title.length;
    int number2 = subTitle.length;
    return Scaffold(
      backgroundColor: const Color(0XFFE8EEFC),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Material(
                      elevation: 30,
                      shadowColor: const Color(0XFFA9AFBB),
                      borderRadius: BorderRadius.circular(40),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color(0XFFE8EEFC),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.save_rounded,
                            color: Color(0XFFB3B9C5),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Center(
                        child: Material(
                          elevation: 0,
                          color: const Color(0XFFE8EEFC),
                          shadowColor: const Color(0XFFA9AFBB),
                          borderRadius: BorderRadius.circular(150),
                          child: const CircleAvatar(
                            radius: 80,
                            backgroundColor: Color(0XFFE8EEFC),
                          ),
                        ),
                      ),
                      Center(
                        child: Image.asset(
                          "images/image_1.png",
                          height: 180,
                          width: 180,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Material(
                          elevation: 30,
                          shadowColor: const Color(0XFFA9AFBB),
                          borderRadius: BorderRadius.circular(40),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color(0XFFE8EEFC),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.more_horiz,
                                color: Color(0XFFB3B9C5),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ListView.builder(
                itemCount: title.length,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, i) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        int x = i;
                        for (int j = 0; j < audiostatus.length; j++) {
                          if (i == j) {
                            audiostatus[j] = !audiostatus[j];
                          } else {
                            audiostatus[j] = false;
                          }
                        }
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            color:
                                audiostatus[i] ? const Color(0XFFCCDBF2) : null,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      title[i].toString(),
                                      style: const TextStyle(
                                        color: Color(0XFF858C9D),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      subTitle[i].toString(),
                                      style: const TextStyle(
                                        color: Color(0XFFA1B0C7),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ],
                                ),
                                const Expanded(child: SizedBox()),
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      int x = i;
                                      for (int j = 0;
                                          j < audiostatus.length;
                                          j++) {
                                        if (i == j) {
                                          audiostatus[j] = !audiostatus[j];
                                        } else {
                                          audiostatus[j] = false;
                                        }
                                      }
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    elevation: 40,
                                    shadowColor: const Color(0XFFA9AFBB),
                                    minimumSize: const Size(10, 55),
                                    backgroundColor: audiostatus[i]
                                        ? const Color(0XFF83A0FC)
                                        : const Color(0XFFE8EEFC),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(70),
                                    ),
                                  ),
                                  child: Icon(
                                    audiostatus[i]
                                        ? Icons.stop
                                        : Icons.play_arrow,
                                    color: audiostatus[i]
                                        ? const Color(0XFFB2C1D5)
                                        : const Color(0XFFA9B1C6),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 30,
                      shadowColor: Color(0XFFA9AFBB),
                      minimumSize: const Size(70, 70),
                      backgroundColor: const Color(0XFFE8EEFC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    child: Image.asset("images/image_2.png"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        value2 = !value2;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 30,
                      shadowColor: const Color(0XFFA9AFBB),
                      minimumSize: const Size(70, 70),
                      backgroundColor: const Color(0XFF83A0FC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    child: Icon(
                      value2 ? Icons.pause : Icons.play_arrow,
                      color: const Color(0XFFDBEFFF),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 30,
                      shadowColor: Color(0XFFA9AFBB),
                      minimumSize: const Size(70, 70),
                      backgroundColor: const Color(0XFFE8EEFC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    child: Image.asset("images/image_3.png"),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}
