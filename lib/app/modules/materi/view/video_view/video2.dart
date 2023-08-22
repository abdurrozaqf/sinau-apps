import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:sinau_apps/app/data/constans/colors.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Video2 extends StatefulWidget {
  const Video2({super.key});

  @override
  State<Video2> createState() => _Video2State();
}

class _Video2State extends State<Video2> {
  YoutubePlayerController? _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller = YoutubePlayerController(
      initialVideoId: 'ctQS0YeY6h8',
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        // mute: false,
        isLive: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller!,
        showVideoProgressIndicator: true,
        progressIndicatorColor: warna2,
      ),
      builder: (context, player) {
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
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                          // Container(
                          //   alignment: Alignment.center,
                          //   height: 46,
                          //   child: const Text(
                          //     "Kumpulan Video Materi",
                          //     textAlign: TextAlign.center,
                          //     style: TextStyle(
                          //       color: Colors.white,
                          //       fontSize: 18,
                          //       fontWeight: FontWeight.w900,
                          //       letterSpacing: 0.8,
                          //       shadows: [
                          //         Shadow(
                          //           offset: Offset(3.0, 3.0),
                          //           blurRadius: 3.0,
                          //           color: Color.fromARGB(255, 0, 0, 0),
                          //         ),
                          //         Shadow(
                          //           offset: Offset(3.0, 3.0),
                          //           blurRadius: 8.0,
                          //           color: warna2,
                          //         ),
                          //       ],
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                    //video
                    player,
                    const SizedBox(height: 12),
                    //deskripsi
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                  top: 20.0, left: 20, right: 20),
                              child: Text(
                                "Memahami Jenis dan Sifat Segiempat",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 12),
                              child: Text(
                                "Masih inget dengan Jenis dan Sifat Segiempat? setelah nonton video ini, kamu akan memahami bagaimana jenis dan sifat dari Segiempat beserta contohnya.\n\nYuk tonton videonya!",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5,
                                ),
                              ),
                            ),
                            const Divider(
                              thickness: 1,
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                "Sumber: channel Anjar Rambari Apandi.",
                                style: TextStyle(
                                  color: warnat2,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            const Divider(
                              thickness: 1,
                            ),
                            const Spacer(),
                            Container(
                              height: 130,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(25),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(0, -1),
                                    blurRadius: 10,
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 12),
                                    height: 5,
                                    width: Get.width / 5,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                  ListTile(
                                    onTap: () {
                                      Get.offAndToNamed('/video3view');
                                    },
                                    leading: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Image.asset('assets/images/k3.png'),
                                        const Icon(
                                          Icons.play_circle_outline_rounded,
                                          color: Colors.black54,
                                          size: 35,
                                        ),
                                      ],
                                    ),
                                    title: const Text(
                                      "Selanjutnya",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    subtitle: const Text(
                                      "Video: Memahami Keliling dan Luas Segiempat",
                                      style: TextStyle(
                                        color: warna1,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                ],
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
      },
    );
  }
}
