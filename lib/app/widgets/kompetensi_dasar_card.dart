import 'package:flutter/material.dart';

import '../data/models/kompetensi_dasar_data.dart';

class KompetensiDasarCard extends StatelessWidget {
  const KompetensiDasarCard({
    Key? key,
    required this.kd,
  }) : super(key: key);

  final KD kd;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            kd.no,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
              child: Text(
            kd.text,
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
