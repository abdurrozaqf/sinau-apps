import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../data/constans/colors.dart';
import '../data/constans/icons.dart';
import '../data/models/materi_data_card.dart';

class MateriCard extends StatelessWidget {
  const MateriCard({
    Key? key,
    required this.materi,
  }) : super(key: key);

  final Materi materi;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: Column(
        children: [
          //Materi
          GestureDetector(
            onTap: () {
              Get.toNamed(materi.route);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 3,
                    spreadRadius: 1,
                    offset: Offset(1, 1),
                  ),
                ],
                image: const DecorationImage(
                  image: AssetImage("assets/images/matericard.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //image
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.white),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0xffed8643),
                              blurRadius: 12,
                              offset: Offset(0, 0),
                            ),
                          ],
                          image: DecorationImage(
                            image: AssetImage(
                              materi.image,
                            ),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 45,
                        height: 45,
                        child: Image.asset(materi.plyimage),
                      )
                    ],
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Title
                        Text(
                          materi.title,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                offset: Offset(1.0, 1.0),
                                blurRadius: 1.0,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                              Shadow(
                                offset: Offset(1.0, 1.0),
                                blurRadius: 1.0,
                                color: Color(0xffe65100),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        //Subtitle
                        Text(
                          materi.subtitle,
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            letterSpacing: 0.5,
                            shadows: [
                              Shadow(
                                offset: Offset(1.0, 1.0),
                                blurRadius: 1.0,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                              Shadow(
                                offset: Offset(1.0, 1.0),
                                blurRadius: 1.0,
                                color: Color(0xffe65100),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          //Soal
          GestureDetector(
            onTap: () {
              Get.toNamed(materi.routesoal);
            },
            child: Container(
              width: Get.width / 1.3,
              height: 50,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(icDocument, color: warnaic),
                  const SizedBox(width: 5),
                  Text(
                    'Soal Latihan ${materi.subtitle}',
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
