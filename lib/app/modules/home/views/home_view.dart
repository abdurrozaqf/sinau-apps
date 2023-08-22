import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../data/constans/colors.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final pagecontroller = PageController(viewportFraction: 1);
  bool isLastPage = false;
  bool isFirstPage = false;

  @override
  void dispose() {
    pagecontroller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: warnabg,
      body: Stack(
        children: [
          //Background
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/home_view.png"),
                  fit: BoxFit.cover),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                //Appbar
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //logo
                      Row(
                        children: [
                          //image
                          Container(
                            width: 46,
                            height: 46,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                image: AssetImage(
                                  "assets/logo_home.png",
                                ),
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
                          ),
                          const SizedBox(width: 12),
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
                          )
                        ],
                      ),
                      //action
                      Row(
                        children: [
                          //info
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
                                // showModalBottomSheet(
                                //   context: context,
                                //   builder: (BuildContext _) {
                                //     return const AboutView();
                                //   },
                                //   isScrollControlled: true,
                                //   shape: const RoundedRectangleBorder(
                                //     borderRadius: BorderRadius.only(
                                //       topLeft: Radius.circular(15),
                                //       topRight: Radius.circular(15),
                                //     ),
                                //   ),
                                // );
                                // Get.toNamed('/aboutview');
                                Get.defaultDialog(
                                  // barrierDismissible: false,
                                  title: "Tentang aplikasi SINAU",
                                  titleStyle: const TextStyle(
                                    fontWeight: FontWeight.w800,
                                    letterSpacing: 0.3,
                                  ),
                                  titlePadding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  radius: 12,

                                  content: Column(
                                    children: const [
                                      Text(
                                        "Disini aplikasi Sinau diciptakan untuk mempermudah pembelajaran melalui materi yang tersedia serta latihan-latihan soal yakni materi Segiempat dan Segitiga kelas 7 Sekolah Menengah Pertama.",
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(fontSize: 14),
                                      ),
                                      SizedBox(height: 12.0),
                                      Text(
                                        "Agar memproleh belajar yang maksimal, perhatikan pada setiap tampilan halaman, terdapat panduan penggunaan ataupun informasi yang memudahkan dalam proses belajar!.",
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(fontSize: 14),
                                      ),
                                      Divider(
                                        color: Colors.black,
                                      ),
                                      Text(
                                        "Copyright ©2023, Licensed\nAbdur Rozaq Fakhruddin.",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  ),
                                );
                              },
                              icon: const Icon(
                                Icons.info_outline_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          //exit
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
                                Get.bottomSheet(
                                  // isDismissible: false,
                                  enableDrag: false,
                                  clipBehavior: Clip.antiAlias,
                                  Material(
                                    color: warnabg,
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                    ),
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 30),
                                      height: 230,
                                      child: Column(
                                        children: [
                                          //line
                                          Container(
                                            margin:
                                                const EdgeInsets.only(top: 10),
                                            height: 3,
                                            width: Get.width / 7,
                                            decoration: BoxDecoration(
                                              color: Colors.black26,
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                            ),
                                          ),
                                          const SizedBox(height: 15),
                                          const Text(
                                            "Keluar?",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 255, 17, 0),
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
                                            "Apakah anda yakin ingin keluar?",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          const SizedBox(height: 30),
                                          //button
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              //tidak
                                              Container(
                                                width: 120,
                                                height: 45,
                                                decoration: BoxDecoration(
                                                  color: warna3,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                      color: warnaboder),
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
                                                    Navigator.of(context).pop();
                                                  },
                                                  style: TextButton.styleFrom(
                                                    backgroundColor: warna3,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                  child: const Text(
                                                    "Tidak",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: warna2,
                                                        fontWeight:
                                                            FontWeight.w800),
                                                  ),
                                                ),
                                              ),
                                              //ya
                                              Container(
                                                width: 120,
                                                height: 45,
                                                decoration: BoxDecoration(
                                                  color: warna1,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                      color: warnaboder),
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
                                                    SystemNavigator.pop();
                                                  },
                                                  style: TextButton.styleFrom(
                                                    backgroundColor: warna2,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                  child: const Text(
                                                    "Ya, keluar",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: warna3,
                                                        fontWeight:
                                                            FontWeight.w800),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                              icon: const Icon(
                                Icons.exit_to_app_rounded,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                //evalation
                Container(
                  height: 3,
                  decoration: const BoxDecoration(
                    // color: Colors.black12,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0.0, 1.0),
                        blurRadius: 3.0,
                        color: Colors.black26,
                      ),
                    ],
                  ),
                ),
                //Content
                Expanded(
                  child: ListView(
                    children: [
                      //Title
                      const Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 25),
                        child: Text.rich(
                          textAlign: TextAlign.left,
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "Selamat datang\ndi Aplikasi, ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(2.0, 2.0),
                                      blurRadius: 3.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                    Shadow(
                                      offset: Offset(2.0, 2.0),
                                      blurRadius: 3.0,
                                      color: warna2,
                                    ),
                                  ],
                                ),
                              ),
                              TextSpan(
                                text: "Sinau",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 32,
                                    fontWeight: FontWeight.w800,
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
                                    ]),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //Banner
                      Container(
                        margin: const EdgeInsets.all(12.0),
                        height: Get.height / 4.8,
                        width: Get.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: warnaboder,
                          // border: Border.all(color: warnaboder),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 3,
                              spreadRadius: 1,
                              offset: Offset(1, 1),
                            ),
                          ],
                        ),
                        child: Card(
                          margin: const EdgeInsets.all(0),
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              //banner
                              CarouselSlider(
                                items: imageSliders,
                                carouselController: _controller,
                                options: CarouselOptions(
                                  autoPlay: true,
                                  autoPlayInterval: const Duration(seconds: 3),
                                  viewportFraction: 1,
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      _current = index;
                                    });
                                  },
                                ),
                              ),
                              //dot
                              Positioned(
                                bottom: 0,
                                left: 12,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: imgList.asMap().entries.map(
                                    (entry) {
                                      return GestureDetector(
                                        onTap: () => _controller
                                            .animateToPage(entry.key),
                                        child: Container(
                                          width: 10.0,
                                          height: 10.0,
                                          margin: const EdgeInsets.symmetric(
                                              vertical: 8.0, horizontal: 4.0),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color:
                                                (Theme.of(context).brightness ==
                                                            Brightness.dark
                                                        ? Colors.white
                                                        : Colors.black)
                                                    .withOpacity(
                                                        _current == entry.key
                                                            ? 0.5
                                                            : 0.1),
                                          ),
                                        ),
                                      );
                                    },
                                  ).toList(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      //Menu Utama >
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 12),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          decoration: const BoxDecoration(
                            color: warnabg,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0.0, 4.0),
                                color: Colors.black26,
                                blurRadius: 1,
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //Title
                              const Text(
                                "Menu Utama",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(2.0, 2.0),
                                      blurRadius: 3.0,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                              //Lihat Semua
                              TextButton(
                                onPressed: () {
                                  Get.bottomSheet(
                                    Material(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(25),
                                        topRight: Radius.circular(25),
                                      ),
                                      child: Container(
                                        // height: Get.height/4,
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            //Line gery
                                            Container(
                                              height: 5,
                                              width: Get.width / 1.8,
                                              decoration: BoxDecoration(
                                                color: Colors.black26,
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                              ),
                                            ),
                                            //Title
                                            const Text(
                                              "Menu Utama",
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w800,
                                              ),
                                            ),
                                            //List Menu
                                            const ListMenu(
                                              image: 'indikator.png',
                                              title: 'Indikator',
                                              subtitle:
                                                  '4 KD, 7 Indikator, dan 7 Tujuan Pembelajaran',
                                              route: '/indikatorview',
                                            ),
                                            const ListMenu(
                                              image: 'materi.png',
                                              title: 'Materi',
                                              subtitle:
                                                  '5 Konsep & 20 Soal Latihan',
                                              route: '/materiview',
                                            ),
                                            const ListMenu(
                                              image: 'evaluasi.png',
                                              title: 'Evaluasi',
                                              subtitle: '50 Soal Evaluasi',
                                              route: '/evaluasiview',
                                            ),
                                          ]
                                              .animate(interval: 200.ms)
                                              .fadeIn(duration: 400.ms)
                                              .moveX(duration: 300.ms),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                child: Row(
                                  children: const [
                                    Text(
                                      "Lihat semua",
                                      style: TextStyle(
                                        color: warnat2,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        shadows: [
                                          Shadow(
                                            offset: Offset(1.0, 1.0),
                                            blurRadius: 1.0,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Icon(
                                      Icons.arrow_forward_rounded,
                                      color: warnat2,
                                      shadows: [
                                        Shadow(
                                          offset: Offset(1.0, 1.0),
                                          blurRadius: 1.0,
                                          color: Colors.white,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //card menu
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              SizedBox(width: 15),
                              HomeCard(
                                img: 'indikator.png',
                                title: 'Indikator',
                                subtitle:
                                    'Disini kamu akan belajar memahami materi sesuai dengan indikator',
                                route: '/indikatorview',
                              ),
                              SizedBox(width: 15),
                              HomeCardMateri(
                                img: 'materi.png',
                                title: 'Materi',
                                subtitle:
                                    'Disini kamu akan belajar memahami materi sesuai dengan indikator',
                                route: '/materiview',
                              ),
                              SizedBox(width: 15),
                              HomeCardEvaluasi(
                                img: 'evaluasi.png',
                                title: 'Evaluasi',
                                subtitle:
                                    'Disini kamu akan belajar memahami materi sesuai dengan indikator',
                                route: '/evaluasiview',
                              ),
                              SizedBox(width: 15),
                            ],
                          ),
                        ),
                      ),
                      //Title flashcard
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 12),
                        child: Container(
                          padding: const EdgeInsets.all(12.0),
                          decoration: const BoxDecoration(
                            color: warnabg,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0.0, 4.0),
                                color: Colors.black26,
                                blurRadius: 1,
                              ),
                            ],
                          ),
                          child: Row(
                            children: const [
                              Text(
                                "Catatan",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(2.0, 2.0),
                                      blurRadius: 3.0,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 12),
                              Icon(Icons.bookmarks_outlined)
                            ],
                          ),
                        ),
                      ),
                      //Pageview
                      Container(
                        padding: const EdgeInsets.all(12),
                        height: 630,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: PageView(
                                controller: pagecontroller,
                                onPageChanged: (index) {
                                  setState(() {
                                    isFirstPage = index == 0;
                                    isLastPage = index == 1;
                                  });
                                },
                                scrollDirection: Axis.horizontal,
                                children: [
                                  InkWell(
                                    onTap: () => Get.defaultDialog(
                                      title: "Rangkuman SEGIEMPAT",
                                      titleStyle: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700),
                                      titlePadding: const EdgeInsets.symmetric(
                                        vertical: 12.0,
                                      ),
                                      contentPadding: const EdgeInsets.all(0),
                                      content: InteractiveViewer(
                                        child: ClipRect(
                                          child: Image.asset(
                                              'assets/bangundatar/segiempat.png'),
                                        ),
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 535,
                                          width: Get.width,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color: Colors.white,
                                            border: Border.all(
                                                color: warna2, width: 3),
                                            image: const DecorationImage(
                                              image: AssetImage(
                                                  'assets/bangundatar/segiempat.png'),
                                              fit: BoxFit.fitWidth,
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
                                        ),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () => Get.defaultDialog(
                                      title: "Rangkuman SEGITIGA",
                                      titleStyle: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700),
                                      titlePadding: const EdgeInsets.symmetric(
                                          vertical: 12.0),
                                      contentPadding: const EdgeInsets.all(0),
                                      content: InteractiveViewer(
                                        child: Image.asset(
                                            'assets/bangundatar/segitiga.png'),
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 535,
                                          width: Get.width,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color: Colors.white,
                                            border: Border.all(
                                                color: warna2, width: 3),
                                            image: const DecorationImage(
                                              image: AssetImage(
                                                  'assets/bangundatar/segitiga.png'),
                                              fit: BoxFit.fitWidth,
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
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: SmoothPageIndicator(
                                controller: pagecontroller,
                                count: 2,
                                effect: const WormEffect(
                                  dotHeight: 10,
                                  dotWidth: 10,
                                  spacing: 20,
                                  dotColor: Colors.grey,
                                  activeDotColor: warna2,
                                ),
                                onDotClicked: (index) =>
                                    pagecontroller.animateToPage(
                                  index,
                                  duration: const Duration(milliseconds: 400),
                                  curve: Curves.easeIn,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Tap untuk melihat lebih jelas",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  const Icon(
                                    Icons.touch_app_outlined,
                                    color: Colors.black,
                                  )
                                      .animate(
                                        onPlay: (controller) =>
                                            controller.repeat(),
                                      )
                                      .fadeIn()
                                      .scale(
                                          begin: const Offset(1, 1),
                                          end: const Offset(0.5, 0.5),
                                          duration: 1300.ms)
                                      .fadeOut()
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]
                        .animate(interval: 100.ms)
                        .fadeIn(duration: 300.ms)
                        .moveX(duration: 300.ms),
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

class FlipCardNote extends StatelessWidget {
  const FlipCardNote({
    super.key,
    required this.img,
  });
  final String img;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        image: DecorationImage(
            image: AssetImage('assets/bangundatar/$img.png'),
            fit: BoxFit.fitHeight),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 3,
            spreadRadius: 1,
            offset: Offset(1, 1),
          ),
        ],
      ),
    );
  }
}

// versi list <lihat semua>
class ListMenu extends StatelessWidget {
  const ListMenu({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.route,
  }) : super(key: key);

  final String image, title, subtitle, route;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: Get.height / 9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            offset: const Offset(4.0, 4.0),
            blurRadius: 15.0,
            spreadRadius: 1.0,
          ),
          const BoxShadow(
            color: Colors.white,
            offset: Offset(-4.0, -4.0),
            blurRadius: 15.0,
            spreadRadius: 1.0,
          ),
        ],
      ),
      child: ListTile(
        onTap: () {
          Get.offAndToNamed(route);
        },
        leading: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/$image"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8)),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            letterSpacing: 0,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(
            color: warnat2,
            fontSize: 12,
            fontWeight: FontWeight.w400,
            letterSpacing: 0,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios_outlined,
          color: warnaic,
        ),
      ),
    );
  }
}

// card menu utama
class HomeCard extends StatelessWidget {
  const HomeCard({
    Key? key,
    required this.img,
    required this.title,
    required this.subtitle,
    required this.route,
  }) : super(key: key);
  final String img, title, subtitle, route;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: warnaboder,
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
      child: Card(
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 0,
        child: InkWell(
          onTap: () {
            Get.toNamed(route);
          },
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: Get.width,
                    height: 200,
                    child: Image.asset(
                      'assets/images/$img',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: warnat1,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      subtitle,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        color: warnat2,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// card menu materi
class HomeCardMateri extends StatelessWidget {
  const HomeCardMateri({
    Key? key,
    required this.img,
    required this.title,
    required this.subtitle,
    required this.route,
  }) : super(key: key);
  final String img, title, subtitle, route;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: warnaboder,
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
      child: Card(
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 0,
        child: InkWell(
          onTap: () {
            Get.toNamed(route);
            // Get.defaultDialog(
            //   title: 'Perhatian!',
            //   titleStyle: const TextStyle(
            //     fontWeight: FontWeight.bold,
            //   ),
            //   middleText:
            //       'Yuk baca kembali materi yang telah dipelajari, untuk meninjau ulang pelajaran lalu yang berkait dengan materi hari ini!',
            // );
          },
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: Get.width,
                    height: 200,
                    child: Image.asset(
                      'assets/images/$img',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: warnat1,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      subtitle,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        color: warnat2,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// card menu evaluasi
class HomeCardEvaluasi extends StatelessWidget {
  const HomeCardEvaluasi({
    Key? key,
    required this.img,
    required this.title,
    required this.subtitle,
    required this.route,
  }) : super(key: key);
  final String img, title, subtitle, route;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: warnaboder,
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
      child: Card(
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 0,
        child: InkWell(
          onTap: () {
            Get.toNamed(route);
            // Get.defaultDialog(
            //   title: 'Perhatian!',
            //   titleStyle: const TextStyle(
            //     fontWeight: FontWeight.bold,
            //   ),
            //   middleText:
            //       'Yuk kerjakan di rumah untuk soal-soal kegiatan 1 sampai dengan 5 yang sebelumnya sudah dipelajari!',
            // );
          },
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: Get.width,
                    height: 200,
                    child: Image.asset(
                      'assets/images/$img',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: warnat1,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      subtitle,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        color: warnat2,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//list image banner
final List<String> imgList = [
  'assets/banners/indikatorldpi.png',
  'assets/banners/materildpi.png',
  'assets/banners/evaluasildpi.png',
];

//lisview for banner
final List<Widget> imageSliders = imgList
    .map(
      (item) => Image.asset(
        item,
        fit: BoxFit.cover,
        width: Get.width,
      ),
    )
    .toList();
