import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

import '../../../data/constans/colors.dart';
import '../../../data/models/evaluasi_data_card.dart';

class EvaluasiView extends StatefulWidget {
  const EvaluasiView({super.key});

  @override
  State<EvaluasiView> createState() => _EvaluasiViewState();
}

class _EvaluasiViewState extends State<EvaluasiView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //background
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/evaluasi_view.png"),
                  fit: BoxFit.cover),
            ),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //AppBar
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Stack(
                    children: [
                      //Back
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
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
                        ],
                      ),
                      //Title
                      Container(
                        alignment: Alignment.center,
                        height: 46,
                        child: const Text(
                          "EVALUASI",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Peace Sans",
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.normal,
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
                                color: Color(0xffb71c1c),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //Info
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () => Get.defaultDialog(
                              title: "PERHATIAN!",
                              titleStyle:
                                  const TextStyle(fontWeight: FontWeight.w900),
                              barrierDismissible: false,
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 30.0, vertical: 20),
                              titlePadding: const EdgeInsets.only(top: 30.0),
                              content: Column(
                                children: const [
                                  Text.rich(
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text:
                                              "Ketika telah memilih jawaban, maka jawaban tersebut terkunci dan tidak bisa untuk memilih opsi jawaban lainnya.",
                                        ),
                                        TextSpan(
                                          text:
                                              "\n\nMaka dari itu, pastikan memilih jawaban dengan ",
                                        ),
                                        TextSpan(
                                          text: "BENAR!",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              actions: [
                                Container(
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: warna1,
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
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    style: TextButton.styleFrom(
                                      backgroundColor: warna2,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: const Text(
                                      "  Oke, Sudah Mengerti!  ",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: warna3,
                                        fontWeight: FontWeight.w900,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
                                Icons.info_outline_rounded,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                //Title
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
                  child: Text.rich(
                    textAlign: TextAlign.justify,
                    TextSpan(
                      children: [
                        TextSpan(
                          text:
                              "Hallo, selamat datang di portal latihan soal !\n",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.8,
                            shadows: [
                              Shadow(
                                offset: Offset(2.0, 2.0),
                                // blurRadius: 1.0,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                              Shadow(
                                offset: Offset(2.0, 2.0),
                                // blurRadius: 1.0,
                                color: Color(0xffb71c1c),
                              ),
                            ],
                          ),
                        ),
                        TextSpan(
                          text: "Apa yang ingin kamu evaluasi hari ini?",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 2,
                            shadows: [
                              Shadow(
                                offset: Offset(2.0, 2.0),
                                blurRadius: 3.0,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                              Shadow(
                                offset: Offset(2.0, 2.0),
                                blurRadius: 3.0,
                                color: Color(0xffb71c1c),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //Content
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: warna3,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          width: Get.width / 2,
                          height: 6,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: evaluasiList.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 12.0, horizontal: 20.0),
                                child: EvaluasiCard(
                                  evaluasi: evaluasiList[index],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
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

class EvaluasiCard extends StatelessWidget {
  const EvaluasiCard({
    Key? key,
    required this.evaluasi,
  }) : super(key: key);
  final Evaluasi evaluasi;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(evaluasi.route);
      },
      child: Container(
        width: Get.width / 1.2,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: warna3,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.white70,
              blurRadius: 12,
              offset: Offset(-10, -10),
            ),
            BoxShadow(
              color: Colors.black12,
              blurRadius: 12,
              offset: Offset(10, 10),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //image
                Container(
                  width: 70,
                  height: 70,
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: warna3,
                    borderRadius: BorderRadius.circular(10),
                    // border: Border.all(color: Colors.white),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white70,
                        blurRadius: 12,
                        offset: Offset(-10, -10),
                      ),
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 12,
                        offset: Offset(10, 10),
                      ),
                    ],
                    image: DecorationImage(
                        image: AssetImage("assets/images/${evaluasi.image}"),
                        fit: BoxFit.fitWidth),
                  ),
                  // child: Image.asset(
                  //   "assets/images/${evaluasi.image}",
                  //   // color: warnaic,
                  // ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Title
                      Text(
                        evaluasi.title,
                        // textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontSize: 15,
                          color: warna1,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 10),
                      //subtitle
                      Text(
                        evaluasi.subtitle,
                        // textAlign: TextAlign.justify,
                        style: const TextStyle(
                          color: warnat2,
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: const [
                          Icon(
                            Icons.question_answer_outlined,
                            color: warnaic,
                            size: 20,
                          ),
                          SizedBox(width: 3),
                          //soal
                          Text(
                            "10 Soal",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 15),
                          Icon(
                            Icons.timer_outlined,
                            color: warnaic,
                            size: 22,
                          ),
                          SizedBox(width: 3),
                          //duration
                          Text(
                            "30 Menit",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
