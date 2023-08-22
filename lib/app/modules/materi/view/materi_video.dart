import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

import '../../../data/constans/colors.dart';

class MateriVideoList extends StatefulWidget {
  const MateriVideoList({super.key});

  @override
  State<MateriVideoList> createState() => _MateriVideoListState();
}

class _MateriVideoListState extends State<MateriVideoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //backgorund
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/score_screen.png"),
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
                      //back
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
                      //judul
                      Container(
                        alignment: Alignment.center,
                        child: const Text(
                          "Video-video materi\nSegiempat & Segitiga",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 0.8,
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
                                              "Ketika ingin menonton video pembelajaran, pastikan telepon genggam sudah terhubung dengan internet, baik itu melalui data atau wifi yang tersedia.",
                                        ),
                                        TextSpan(
                                          text:
                                              "\n\nMaka dari itu, pastikan sudah terhubung internet dengan ",
                                        ),
                                        TextSpan(
                                          text: "BAIK!",
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
                //Content
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ListView(
                      children: const [
                        ListMenuVideo(
                          image: 'k1.png',
                          title: 'Mengenal Bangun Datar Segiempat dan Segitiga',
                          subtitle: '',
                          route: '/video1view',
                        ),
                        ListMenuVideo(
                          image: 'k2.png',
                          title: 'Memahami Jenis dan Sifat Segiempat',
                          subtitle: '',
                          route: '/video2view',
                        ),
                        ListMenuVideo(
                          image: 'k3.png',
                          title: 'Memahami Keliling dan Luas Segiempat',
                          subtitle: '',
                          route: '/video3view',
                        ),
                        ListMenuVideo(
                          image: 'k4.png',
                          title: 'Memahami Jenis dan Sifat Segitiga',
                          subtitle: '',
                          route: '/video4view',
                        ),
                        ListMenuVideo(
                          image: 'k5.png',
                          title: 'Memahami Keliling dan Luas Segitiga',
                          subtitle: '',
                          route: '/video5view',
                        ),
                      ]
                          .animate(delay: 250.ms, interval: 300.ms)
                          .moveX(duration: 300.ms)
                          .fadeIn(duration: 200.ms),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ListMenuVideo extends StatelessWidget {
  const ListMenuVideo({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.route,
  }) : super(key: key);

  final String image, title, subtitle, route;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14.0),
      child: Container(
        alignment: Alignment.center,
        height: Get.height / 8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
            image: AssetImage("assets/images/video_card.png"),
            fit: BoxFit.cover,
          ),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0.0, 0.0),
              blurRadius: 5.0,
              spreadRadius: 3.0,
            ),
          ],
        ),
        child: ListTile(
          onTap: () {
            Get.toNamed(route);
          },
          leading: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/$image"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const Icon(
                Icons.play_circle_outline_rounded,
                color: Colors.black54,
                size: 35,
              ),
            ],
          ),
          title: Text(
            title,
            style: const TextStyle(
              color: warna3,
              fontSize: 16,
              fontWeight: FontWeight.w800,
              letterSpacing: 0,
            ),
          ),
          // subtitle: Text(
          //   subtitle,
          //   style: const TextStyle(
          //     color: warnat2,
          //     fontSize: 12,
          //     fontWeight: FontWeight.w400,
          //     letterSpacing: 0,
          //   ),
          // ),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
            color: warna3,
          ),
        ),
      ),
    );
  }
}
