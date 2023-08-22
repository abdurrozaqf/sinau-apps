class Evaluasi {
  String route, image, title, subtitle;

  Evaluasi({
    required this.route,
    required this.image,
    required this.title,
    required this.subtitle,
  });
}

List<Evaluasi> evaluasiList = [
  Evaluasi(
    route: '/quizview1',
    image: 'evaluasi/k1.png',
    title: 'Mengenal Bangun Datar\nSegiempat dan Segitiga',
    subtitle: 'Kegiatan 1',
  ),
  Evaluasi(
    route: '/quizview2',
    image: 'evaluasi/k2.png',
    title: 'Memahami Jenis dan Sifat Segiempat',
    subtitle: 'Kegiatan 2',
  ),
  Evaluasi(
    route: '/quizview3',
    image: 'evaluasi/k3.png',
    title: 'Memahami Keliling dan Luas Segiempat',
    subtitle: 'Kegiatan 3',
  ),
  Evaluasi(
    route: '/quizview4',
    image: 'evaluasi/k4.png',
    title: 'Memahami Jenis dan Sifat Segitiga',
    subtitle: 'Kegiatan 4',
  ),
  Evaluasi(
    route: '/quizview5',
    image: 'evaluasi/k5.png',
    title: 'Memahami Keliling dan Luas Segitiga',
    subtitle: 'Kegiatan 5',
  ),

  // Evaluasi(
  //   route: '/quizview5',
  //   image: 'k5.png',
  //   title: 'Memahami Garis-garis Istimewa pada Segitiga',
  //   subtitle: 'Kegiatan 6',
  // ),
  // Evaluasi(
  //   route: '/quizview5',
  //   image: 'k5.png',
  //   title: 'Menaksir Luas Bangun Datar tidak Beraturan',
  //   subtitle: 'Kegiatan 7',
  // ),
  // Evaluasi(
  //   route: '/quizviewtimer',
  //   image: 'evaluasi/k5.png',
  //   title: 'QuizTimerBeta',
  //   subtitle: 'Kegiatan -',
  // ),
];
