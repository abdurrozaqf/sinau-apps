import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';

import '../../../data/constans/colors.dart';
import '../../../data/constans/icons.dart';
import '../../../data/models/indikator_data.dart';
import '../../../data/models/kompetensi_dasar_data.dart';
import '../../../data/models/tujuan_pembelajaran_data.dart';
import '../../../widgets/indikator_card.dart';
import '../../../widgets/kompetensi_dasar_card.dart';
import '../../../widgets/tujuan_pembelajaran_card.dart';

class IndikatorView extends StatefulWidget {
  const IndikatorView({super.key});

  @override
  State<IndikatorView> createState() => _IndikatorViewState();
}

class _IndikatorViewState extends State<IndikatorView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //background
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/indikator_view.png"),
                  fit: BoxFit.cover),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                // AppBar
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
                          "INDIKATOR",
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
                      )
                    ],
                  ),
                ),
                //header
                HeaderIndikator(
                  image: 'indikator.png',
                  title:
                      'Kompetensi Dasar, Indikator Pencapaian Kompetensi & Tujuan Pembelajaran',
                  subtitle1: '${KDList.length} KD',
                  subtitle2: '${IPKList.length} Indikator',
                  subtitle3: '${TJList.length} Tujuan Pembelajaran',
                ),
                //Line
                const SizedBox(height: 10),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: 7,
                  color: Colors.grey[300],
                ),
                //Content
                Expanded(
                  child: PageView(
                    children: [
                      //KD
                      Container(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 3,
                                spreadRadius: 1,
                                offset: Offset(1, 1),
                              ),
                            ],
                            image: const DecorationImage(
                              image: AssetImage(
                                  "assets/images/background_light.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            children: [
                              const Text(
                                "Kompetensi Dasar",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Expanded(
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return KompetensiDasarCard(
                                      kd: KDList[index],
                                    );
                                  },
                                  itemCount: KDList.length,
                                  physics: const ScrollPhysics(parent: null),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //Indikator
                      Container(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 3,
                                spreadRadius: 1,
                                offset: Offset(1, 1),
                              ),
                            ],
                            image: const DecorationImage(
                              image: AssetImage(
                                  "assets/images/background_light.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            children: [
                              const Text(
                                "Indikator Pencapaian\nKompetensi",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Expanded(
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return IndikatorPencapaianCard(
                                      ipk: IPKList[index],
                                    );
                                  },
                                  itemCount: IPKList.length,
                                  physics: const ScrollPhysics(parent: null),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //Tujuan Pembelajaran
                      Container(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 3,
                                spreadRadius: 1,
                                offset: Offset(1, 1),
                              ),
                            ],
                            image: const DecorationImage(
                              image: AssetImage(
                                  "assets/images/background_light.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            children: [
                              const Text(
                                "Tujuan Pembelajaran",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Expanded(
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return TujuanPembelajaranCard(
                                      tj: TJList[index],
                                    );
                                  },
                                  itemCount: TJList.length,
                                  physics: const ScrollPhysics(parent: null),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]
                        .animate(delay: 200.ms)
                        .move(duration: 400.ms)
                        .fadeIn(duration: 300.ms),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Geser",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.black,
                      )
                          .animate(
                            onPlay: (controller) => controller.repeat(),
                          )
                          .fadeIn()
                          .slideX(end: 1, duration: 1300.ms)
                          .fadeOut()
                    ],
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

class HeaderIndikator extends StatelessWidget {
  const HeaderIndikator({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle1,
    required this.subtitle2,
    required this.subtitle3,
  }) : super(key: key);

  final String image, title, subtitle1, subtitle2, subtitle3;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //title
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
                  color: warna3,
                  // border: Border.all(color: warnaboder),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 3,
                      spreadRadius: 1,
                      offset: Offset(1, 1),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/$image",
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              const SizedBox(width: 15),
              //title
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 0.8,
                    shadows: [
                      Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 3.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 3.0,
                        color: Color(0xfff57f17),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        //subtitle
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            decoration: BoxDecoration(
              color: warnabg,
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
                      icActivity,
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
                    SvgPicture.asset(
                      icGraph,
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
                Row(
                  children: [
                    SvgPicture.asset(
                      icChart,
                      color: warnaic,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      subtitle3,
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
