import 'package:flutter/material.dart';

import '../data/models/tujuan_pembelajaran_data.dart';

class TujuanPembelajaranCard extends StatelessWidget {
  const TujuanPembelajaranCard({
    Key? key,
    required this.tj,
  }) : super(key: key);

  final TJ tj;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${tj.no.toString()}.",
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
              child: Text(
            tj.text,
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
