import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../data/constans/colors.dart';
import '../../../data/models/question_model_1.dart';

class QuizViewTimer extends StatefulWidget {
  const QuizViewTimer({super.key});

  @override
  State<QuizViewTimer> createState() => _QuizViewTimerState();
}

class _QuizViewTimerState extends State<QuizViewTimer> {
  //define the datas
  List<Question> questionList = getQuestions();
  int currentQuestionIndex = 0;
  int score = 0;
  Answer? selectedAnswer;

  //pageview
  final controller = PageController();
  bool isLastPage = false;
  bool isFirstPage = false;
  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  //timer
  static const maxSeconds = 30;
  int seconds = maxSeconds;
  Timer? timer;

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (seconds > 0) {
        setState(() {
          seconds--;
        });
      } else {
        // _showScoreDialog();
        stopTimer();
        // Navigator.pop(context);
      }
    });
  }

  void stopTimer({bool reset = true}) {
    if (reset) {
      resetTimer();
    }

    timer?.cancel();
  }

  void resetTimer() => seconds = maxSeconds;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        backgroundColor: warna3,
        // extendBody: true,
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            //bg
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/background3.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //content
            PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  isFirstPage = index == 0;
                  isLastPage = index == 1;
                });
              },
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 300,
                  ),
                  decoration: BoxDecoration(
                    color: warna2.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        height: 3,
                        width: Get.width / 7,
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        "Suah siap?",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w900),
                      ),
                      const SizedBox(height: 10),
                      const Divider(
                        thickness: 1,
                        color: Colors.black26,
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        "Sudah siap untuk memulai latihan?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 30),
                      GestureDetector(
                        onTap: () {
                          controller.nextPage(
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeInOut,
                          );
                          startTimer();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                            color: warna2,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: warnaboder, width: 3),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 3,
                                spreadRadius: 1,
                                offset: Offset(1, 1),
                              ),
                            ],
                          ),
                          child: const Text(
                            "  Oke, SIAP  ",
                            style: TextStyle(
                                fontSize: 20,
                                color: warna3,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                content(),
              ],
            ),
            //appbar
            Container(
              margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
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
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            stopTimer();
                          },
                          icon: const Icon(
                            Icons.arrow_back_rounded,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Latihan",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
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
                    ],
                  )
                ],
              ),
            ),
          ]
              .animate(delay: 200.ms, interval: 300.ms)
              .moveX(duration: 300.ms)
              .fadeIn(duration: 300.ms),
        ),
      ),
      onWillPop: () async {
        return false;
      },
    );
  }

  Container content() {
    return Container(
      margin: const EdgeInsets.only(top: 100, left: 20, right: 20, bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _questionWidget(),
          const Spacer(flex: 5),
          _answerList(),
          const SizedBox(height: 26),
          _nextButton(),
        ],
      ),
    );
  }

  _questionWidget() {
    return Column(
      children: [
        //no soal
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Soal ${currentQuestionIndex + 1} / ${questionList.length.toString()}",
                  style: const TextStyle(
                    letterSpacing: 1,
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
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
                buildTime(),
              ],
            ),
            const Divider(
              thickness: 6,
            ),
          ],
        ),
        const SizedBox(height: 5),
        //soal
        Container(
          width: Get.width,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
              Image.asset(
                questionList[currentQuestionIndex].questionImage,
                // fit: BoxFit.fitWidth,
              ),
              Text(
                questionList[currentQuestionIndex].questionText,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildTime() {
    return Row(
      children: [
        const Icon(
          Icons.timer_outlined,
          color: Colors.white,
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
        const SizedBox(width: 10),
        Text(
          "$seconds menit",
          style: const TextStyle(
            letterSpacing: 1,
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w800,
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
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 50,
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
          style: const TextStyle(
            // fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

  _nextButton() {
    // final isRunning = timer == null ? false : timer!.isActive;

    bool isLastQuestion = false;
    if (currentQuestionIndex == questionList.length - 1) {
      isLastQuestion = true;
    }

    return SizedBox(
      width: Get.width / 2,
      height: 50,
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
              stopTimer();
            } else {
              //next question
              setState(() {
                selectedAnswer = null;
                currentQuestionIndex++;
              });

              // startTimer();
            }
          },
          child: Text(
            isLastQuestion ? "Submit" : "Selanjutnya",
            style: const TextStyle(
              letterSpacing: 1,
              fontSize: 24,
              fontWeight: FontWeight.w800,
            ),
          )),
    );
  }

  _showScoreDialog() {
    bool isPassed = false;

    if (score >= questionList.length * 0.8) {
      //pass if 80 %
      isPassed = true;
    }
    String title = isPassed
        ? "Selamat sudah mencapai skor yang baik\nAyo latihan materi kegiatan lainnya! "
        : "Mau memperbaiki skor diatas?\nLangsung kerjakan ulang aja!";

    return Container(
      // decoration: BoxDecoration(
      //   color: warna1,
      //   borderRadius: BorderRadius.vertical(
      //     top: Radius.circular(20),
      //   ),
      // ),
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          //line
          Container(
            margin: const EdgeInsets.all(10),
            width: Get.width / 1.6,
            height: 5,
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          const SizedBox(height: 15),
          //content
          Container(
            width: Get.width,
            // height: Get.height / 3,
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
                  color: Colors.black12,
                  blurRadius: 3,
                  spreadRadius: 1,
                  offset: Offset(1, 1),
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
                        fontSize: 36,
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
                    Text(
                      DateFormat.yMMMMd().format(DateTime.now()),
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
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
                  ],
                ),
                const Text(
                  "Skor latihan kegiatan 8.1",
                  style: TextStyle(
                    fontSize: 24,
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
                            fontSize: 20,
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
                          "${score * 10}",
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
                    fontSize: 18,
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
                          height: 50,
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
                              fontSize: 26,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                          setState(() {
                            currentQuestionIndex = 0;
                            score = 0;
                            selectedAnswer = null;
                          });
                          // startTimer();
                          controller.animateToPage(
                            0,
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: Get.width,
                          height: 50,
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
                            "Ulangi",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
              ],
            ),
          ),
          // SizedBox(height: 30),
        ],
      ),
    );
  }
}
