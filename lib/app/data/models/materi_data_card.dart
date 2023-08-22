class Materi {
  String route, image, plyimage, title, subtitle, routesoal;

  Materi({
    required this.route,
    required this.image,
    required this.plyimage,
    required this.title,
    required this.subtitle,
    required this.routesoal,
  });
}

List<Materi> materiList = [
  // Materi(
  //   route: '/perbandinganview',
  //   image: 'assets/images/per.png',
  //   title: 'Memahami Apa Itu\nPerbandingan',
  //   subtitle: ' ',
  //   routesoal: '/contohperbandinganview',
  // ),
  Materi(
    route: '/kegiatan1view',
    image: 'assets/images/k1.png',
    title: 'Mengenal Bangun Datar\nSegiempat dan Segitiga',
    subtitle: 'Kegiatan 1',
    routesoal: '/contohkegiatan1view',
    plyimage: 'assets/images/blank.png',
  ),
  Materi(
    route: '/kegiatan2view',
    image: 'assets/images/k2.png',
    title: 'Memahami Jenis dan Sifat\nSegiempat',
    subtitle: 'Kegiatan 2',
    routesoal: '/contohkegiatan2view',
    plyimage: 'assets/images/blank.png',
  ),
  Materi(
    route: '/kegiatan3view',
    image: 'assets/images/k3.png',
    title: 'Memahami Keliling dan Luas\nSegiempat',
    subtitle: 'Kegiatan 3',
    routesoal: '/contohkegiatan3view',
    plyimage: 'assets/images/blank.png',
  ),
  Materi(
    route: '/kegiatan4view',
    image: 'assets/images/k4.png',
    title: 'Memahami Jenis dan Sifat\nSegitiga',
    subtitle: 'Kegiatan 4',
    routesoal: '/contohkegiatan4view',
    plyimage: 'assets/images/blank.png',
  ),
  Materi(
    route: '/kegiatan5view',
    image: 'assets/images/k5.png',
    title: 'Memahami Keliling dan Luas\nSegitiga',
    subtitle: 'Kegiatan 5',
    routesoal: '/contohkegiatan5view',
    plyimage: 'assets/images/blank.png',
  ),
  // Materi(
  //   route: '/kegiatan6view',
  //   image: 'assets/images/k5.png',
  //   title: 'Memahami Garis-garis Istimewa pada Segitiga',
  //   subtitle: 'Kegiatan 6',
  //   routesoal: '/kerjakan6',
  // ),
  // Materi(
  //   route: '/kegiatan7view',
  //   image: 'assets/images/k5.png',
  //   title: 'Menaksir Luas Bangun Datar tidak Beraturan',
  //   subtitle: 'Kegiatan 7',
  //   routesoal: '/kerjakan7',
  // ),
  Materi(
    route: '/materivideolist',
    image: 'assets/images/k1.png',
    title: 'Video-video Pembelajaran\nSegiempat & Segitiga',
    subtitle: 'segiempat dan segitiga',
    routesoal: '/evaluasiview',
    plyimage: 'assets/images/play-button.png',
  ),
];
