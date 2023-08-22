import 'package:flutter/material.dart';

import '../data/models/indikator_data.dart';

class IndikatorPencapaianCard extends StatelessWidget {
  const IndikatorPencapaianCard({
    Key? key,
    required this.ipk,
  }) : super(key: key);

  final IPK ipk;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${ipk.no.toString()}.",
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
              child: Text(
            ipk.text,
            textAlign: TextAlign.justify,
            style: const TextStyle(
              fontSize: 14,
            ),
          )),
        ],
      ),
    );
  }
}
