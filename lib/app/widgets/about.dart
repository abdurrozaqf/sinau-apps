import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: Get.height / 1.13,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
        ),
        image: DecorationImage(
            image: AssetImage('assets/images/background_light.png'),
            fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(bottom: 30),
              height: 5,
              width: Get.width / 4,
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              clipBehavior: Clip.none,
              physics: const ScrollPhysics(),
              children: [
                const Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/profile.jpg"),
                    radius: 50,
                  ),
                ),
                const SizedBox(height: 30),
                //title
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0.0, 4.0),
                        color: Colors.black26,
                        blurRadius: 1,
                      ),
                    ],
                  ),
                  child: const Text(
                    "Profil Pengembang",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Abdur Rozaq Fakhruddin\n',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text: 'Program Studi Teknologi Pendidikan\n',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: 'Universitas Pendidikan Ganesha',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        'assets/UNDIKHSA.png',
                        scale: 12,
                      ),
                    ],
                  ),
                ),
                //title
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0.0, 4.0),
                        color: Colors.black26,
                        blurRadius: 1,
                      ),
                    ],
                  ),
                  child: const Text(
                    "Tentang Aplikasi",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(14.0),
                  child: Text(
                    "Disini aplikasi Sinau diciptakan untuk mempermudah proses pembelajaran melalui materi yang tersedia serta latihan-latihan soal yakni materi Segiempat dan Segitiga kelas VII Sekolah Menengah Pertama.",
                    textAlign: TextAlign.justify,
                  ),
                ),
                //title
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0.0, 4.0),
                        color: Colors.black26,
                        blurRadius: 1,
                      ),
                    ],
                  ),
                  child: const Text(
                    "Petunjuk Belajar",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(14.0),
                  child: Text(
                    "Agar memperoleh belajar yang maksimal, perhatikan pada setiap tampilan halaman, terdapat panduan penggunaan ataupun petunjuk belajar berupa informasi yang memudahkan dalam proses belajar!.",
                    textAlign: TextAlign.justify,
                  ),
                ),
                const Divider(
                  color: Colors.black,
                ),
                const Center(
                  child: Text(
                    "Copyright ©2023, Licensed\nAbdur Rozaq Fakhruddin.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
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
