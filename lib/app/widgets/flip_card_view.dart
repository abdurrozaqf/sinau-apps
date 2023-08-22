import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../data/constans/colors.dart';

class ContohSoalMateri extends StatelessWidget {
  const ContohSoalMateri({
    Key? key,
    required this.number,
    required this.sisi,
    required this.image,
    required this.mdFileName,
  }) : super(key: key);

  final String number, sisi, image, mdFileName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(color: warna3),
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
        children: [
          SizedBox(
            height: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  number,
                  style: const TextStyle(
                    letterSpacing: 5,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      sisi,
                      style: const TextStyle(
                        color: warnat3,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Image.asset("assets/images/$image")
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: FutureBuilder(
              future: rootBundle.loadString("assets/md/$mdFileName.md"),
              builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                if (snapshot.hasData) {
                  return Markdown(
                    data: snapshot.requireData,
                    padding: const EdgeInsets.all(0),
                    styleSheet: MarkdownStyleSheet(
                      blockSpacing: 12,
                      blockquotePadding:
                          const EdgeInsets.only(left: 12, top: 2, bottom: 2),
                      blockquoteDecoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      orderedListAlign: WrapAlignment.spaceBetween,
                      textAlign: WrapAlignment.spaceBetween,
                      p: const TextStyle(fontSize: 14, height: 1.6),
                    ),
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
