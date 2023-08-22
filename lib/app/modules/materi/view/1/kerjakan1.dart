import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../data/constans/colors.dart';
import '../../../../data/models/kerjakan/quiz_kerjakan1.dart';

class KerjakanView1 extends StatefulWidget {
  const KerjakanView1({super.key});

  @override
  State<KerjakanView1> createState() => _KerjakanView1();
}

class _KerjakanView1 extends State<KerjakanView1> {
  //define the datas
  List<Question> questionList = getQuestions();
  int currentQuestionIndex = 0;
  int score = 0;
  Answer? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Background
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/score_screen.png",
                ),
                fit: BoxFit.cover,
              ),
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
                      InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          width: 46,
                          height: 46,
                          decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.circular(10),
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
                          "Latihan",
                          textAlign: TextAlign.center,
                          style: TextStyle(
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
                                color: Color(0xff6D5FFD),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                //Content
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _questionWidget(),
                        const Spacer(),
                        _answerList(),
                        const SizedBox(height: 24),
                        _nextButton(),
                      ],
                    ),
                  ),
                )
              ]
                  .animate(delay: 200.ms, interval: 300.ms)
                  .moveX(duration: 300.ms)
                  .fadeIn(duration: 300.ms),
            ),
          ),
        ],
      ),
    );
  }

  _questionWidget() {
    return Column(
      children: [
        //No soal
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Soal ${currentQuestionIndex + 1} / ${questionList.length.toString()}",
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w800,
                letterSpacing: 2,
                shadows: [
                  Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 3.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 3.0,
                    color: Color(0xff6D5FFD),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 6,
            ),
          ],
        ),
        const SizedBox(height: 5),
        //Soal
        Container(
          width: Get.width,
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //Image
              Image.asset(
                questionList[currentQuestionIndex].questionImage,
                // fit: BoxFit.fitWidth,
              ),
              const SizedBox(height: 12),
              //Text
              Text(
                questionList[currentQuestionIndex].questionText,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  _answerList() {
    return Column(
      children: questionList[currentQuestionIndex]
          .answersList
          .map(
            (e) => _answerButton(e),
          )
          .toList(),
    );
  }

  Widget _answerButton(Answer answer) {
    bool isSelected = answer == selectedAnswer;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 4),
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: isSelected ? Colors.white : Colors.black,
          backgroundColor: isSelected ? warna2 : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          shadowColor: Colors.black,
          elevation: 1,
        ),
        onPressed: () {
          if (selectedAnswer == null) {
            if (answer.isCorrect) {
              score++;
            }
            setState(() {
              selectedAnswer = answer;
            });
          }
        },
        child: Text(
          answer.answerText,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

  _nextButton() {
    bool isLastQuestion = false;
    if (currentQuestionIndex == questionList.length - 1) {
      isLastQuestion = true;
    }

    return SizedBox(
      width: Get.width / 2,
      height: 45,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: warna2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {
            if (isLastQuestion) {
              //display score
              showModalBottomSheet(
                context: context,
                builder: (_) => _showScoreDialog(),
                isDismissible: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(25),
                  ),
                ),
              );
            } else {
              //next question
              setState(() {
                selectedAnswer = null;
                currentQuestionIndex++;
              });
            }
          },
          child: Text(
            isLastQuestion ? "Submit" : "Selanjutnya",
            style: const TextStyle(
              letterSpacing: 1,
              fontSize: 18,
              fontWeight: FontWeight.w800,
            ),
          )),
    );
  }

  _showScoreDialog() {
    bool isPassed = false;

    if (score >= questionList.length * 0.75) {
      //pass if 75 %
      isPassed = true;
    }
    String title = isPassed
        ? "Selamat sudah mencapai skor yang baik\nAyo latihan materi kegiatan lainnya! "
        : "Mau memperbaiki skor diatas?\nYuk lihat pembahasan soal!";

    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //Line
          Container(
            width: Get.width / 1.6,
            height: 5,
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          const Spacer(),
          //Content
          Container(
            width: Get.width,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              border: Border.all(color: warnaboder),
              image: const DecorationImage(
                image: AssetImage("assets/images/scoreview.png"),
                fit: BoxFit.cover,
              ),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(1, 1),
                  color: Colors.black38,
                  blurRadius: 3,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Sinau",
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        shadows: [
                          Shadow(
                            offset: Offset(3.0, 3.0),
                            blurRadius: 3.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          Shadow(
                            offset: Offset(3.0, 3.0),
                            blurRadius: 8.0,
                            color: warna2,
                          ),
                        ],
                        letterSpacing: 0.5,
                      ),
                    ),
                    //date
                    Text(
                      DateFormat.yMMMMd().format(DateTime.now()),
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        shadows: [
                          Shadow(
                            offset: Offset(1.0, 1.0),
                            blurRadius: 3.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          Shadow(
                            offset: Offset(1.0, 1.0),
                            blurRadius: 8.0,
                            color: warna2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Text(
                  "Soal latihan kegiatan 1",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    shadows: [
                      Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 3.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 8.0,
                        color: warna2,
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 14),
                    alignment: Alignment.center,
                    width: Get.width / 2,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          "Score kamu",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            shadows: [
                              Shadow(
                                offset: Offset(2.0, 2.0),
                                blurRadius: 3.0,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                              Shadow(
                                offset: Offset(2.0, 2.0),
                                blurRadius: 8.0,
                                color: warna2,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "${score * 25}",
                          style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.w900,
                            color: isPassed
                                ? const Color.fromARGB(255, 110, 255, 115)
                                : Colors.red,
                            shadows: [
                              Shadow(
                                offset: const Offset(0.0, 0.0),
                                blurRadius: 10,
                                color: isPassed
                                    ? const Color.fromARGB(255, 110, 255, 115)
                                    : Colors.red,
                              ),
                              Shadow(
                                offset: const Offset(3.0, 4.0),
                                blurRadius: 1,
                                color: isPassed
                                    ? const Color.fromARGB(228, 76, 175, 79)
                                    : Colors.red,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10)
                      ],
                    ),
                  ),
                ),
                Text(
                  "$title\n",
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    shadows: [
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 3.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 8.0,
                        color: warna2,
                      ),
                    ],
                  ),
                ),
                isPassed
                    ? GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.pop(context);
                          setState(() {
                            currentQuestionIndex = 0;
                            score = 0;
                            selectedAnswer = null;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: Get.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: warna2,
                            border: Border.all(color: warnaboder, width: 3),
                            boxShadow: const [
                              BoxShadow(
                                color: warna2,
                                blurRadius: 3,
                                spreadRadius: 3,
                                offset: Offset(0.0, 0.0),
                              ),
                            ],
                          ),
                          child: const Text(
                            "Lainnya",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.pop(context);
                          setState(() {
                            currentQuestionIndex = 0;
                            score = 0;
                            selectedAnswer = null;
                          });
                          Get.toNamed("/contohkegiatan1view");
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: Get.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: warna2,
                            border: Border.all(color: warnaboder, width: 3),
                            boxShadow: const [
                              BoxShadow(
                                color: warna2,
                                blurRadius: 3,
                                spreadRadius: 3,
                                offset: Offset(0.0, 0.0),
                              ),
                            ],
                          ),
                          child: const Text(
                            "Pembahasan",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
