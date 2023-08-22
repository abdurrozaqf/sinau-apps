import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:flutter_svg/svg.dart';

import '../../../data/constans/colors.dart';
import '../../../data/constans/icons.dart';
import '../../../data/models/materi_data_card.dart';
import '../../../widgets/materi_card.dart';

class MateriView extends StatefulWidget {
  const MateriView({super.key});

  @override
  State<MateriView> createState() => _MateriViewState();
}

class _MateriViewState extends State<MateriView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //background
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/materi_view.png"),
                  fit: BoxFit.cover),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                //AppBar
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Stack(
                    children: [
                      //Back
                      InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          width: 46,
                          height: 46,
                          decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.circular(10),
                            // border: Border.all(color: Colors.white),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 3,
                                spreadRadius: 1,
                                offset: Offset(1, 1),
                              ),
                            ],
                          ),
                          child: const Icon(
                            Icons.arrow_back_rounded,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      //Title
                      Container(
                        alignment: Alignment.center,
                        height: 46,
                        child: const Text(
                          "MATERI",
                          style: TextStyle(
                            fontFamily: "Peace Sans",
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 0.8,
                            shadows: [
                              Shadow(
                                offset: Offset(3.0, 3.0),
                                blurRadius: 3.0,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                              Shadow(
                                offset: Offset(3.0, 3.0),
                                blurRadius: 3.0,
                                color: Color(0xfff57f17),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //Header
                const HeaderMateri(
                  image: 'materi.png',
                  title: 'SEGIEMPAT\n& SEGITIGA',
                  subtitle1: '5 Konsep',
                  subtitle2: '20 Soal Latihan',
                ),
                //line
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: 7,
                  color: Colors.grey[300],
                ),
                //contentW
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return MateriCard(materi: materiList[index]);
                    },
                    itemCount: materiList.length,
                  ),
                ),
              ]
                  .animate(delay: 200.ms, interval: 300.ms)
                  .moveX(duration: 300.ms)
                  .fadeIn(duration: 200.ms),
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderMateri extends StatelessWidget {
  const HeaderMateri({
    Key? key,
    required this.title,
    required this.subtitle1,
    required this.subtitle2,
    required this.image,
  }) : super(key: key);

  final String title, subtitle1, subtitle2, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //image and title
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //image
              Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                  // border: Border.all(color: warnaboder),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(127, 230, 81, 0),
                      blurRadius: 7,
                      spreadRadius: 5,
                      offset: Offset(1.5, 3),
                    ),
                  ],
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/$image",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 15),
              //title
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1,
                    shadows: [
                      Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 3.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 3.0,
                        color: Color(0xffe65100),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        //subtitle
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: warnaboder),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 3,
                  spreadRadius: 1,
                  offset: Offset(1, 1),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      icBookmark,
                      color: warnaic,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      subtitle1,
                      style: const TextStyle(
                        fontSize: 12,
                        color: warnat1,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.question_answer_outlined,
                      color: warnaic,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      subtitle2,
                      style: const TextStyle(
                        fontSize: 12,
                        color: warnat1,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
