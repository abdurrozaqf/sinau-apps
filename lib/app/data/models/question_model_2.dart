class Question {
  final String questionImage;
  final String questionText;
  final List<Answer> answersList;

  Question(
    this.questionImage,
    this.questionText,
    this.answersList,
  );
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(
    this.answerText,
    this.isCorrect,
  );
}

List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

//Soal 1
  list.add(Question(
    "assets/bangundatar/latihan2/blank.png",
    "Perhatikan sifat-sifat bangun datar di bawah ini:\ni. mempunyai 4 titik sudut\nii. mempunyai 2 pasang sisi sama panjang\niii. mempunyai 2 pasang sudut yang sama besar\niv. mempunyai 4 buah sisi\n\nSifat yang dimiliki oleh bangun datar layang-layang ditunjukkan nomor ….",
    [
      Answer("A. i dan iii", false),
      Answer("B. ii, iii, dan iv", false),
      Answer("C. ii, ii, dan iii", false),
      Answer("D. i, ii, dan iv", true),
    ],
  ));

//Soal 2
  list.add(Question(
    "assets/bangundatar/latihan2/blank.png",
    "Anya memperoleh tugas untuk menggambar bangun datar dengan ciri memiliki dua pasang sisi sama panjang dan kedua diagonalnya berpotongan tidak tegak lurus. Bangun datar yang akan digambar Anya adalah...",
    [
      Answer("Jajar Genjang dan Layang-Layang", false),
      Answer("Layang-Layang dan Belah Ketupat", false),
      Answer("Persegi Panjang dan Jajar Genjang", true),
      Answer("Persegi Panjang dan Belah Ketupat", false),
    ],
  ));

//Soal 3
  list.add(Question(
    "assets/bangundatar/latihan2/blank.png",
    "Perhatikan sifat-sifat bangun datar berikut!\n1. memiliki empat sisi sama panjang\n2. memiliki dua pasang sudut sama besar\n3. memiliki dua pasang sisi sama panjang\n4. salah satu sudutnya siku-siku\n5. tidak memiliki simetri lipat\n6. kedua diagonalnya berpotongan tegak lurus\n\nSifat-sifat bangun jajar genjang ditunjukkan oleh nomor...",
    [
      Answer("1, 2, dan 3", false),
      Answer("2, 3, dan 4", false),
      Answer("2, 3, dan 5", true),
      Answer("3, 4, dan 6", false),
    ],
  ));

//Soal 4
  list.add(Question(
    "assets/bangundatar/latihan2/blank.png",
    "Sebuah bangun datar memiliki 4 sisi, dua pasang sisi sejajar dan sama panjang. Sepasang sudut lancip dan sepasang sudut tumpul. Kedua diagonalnya saling berpotongan tegak lurus. Nama bangun datar yang sesuai dengan ciri-ciri tersebut adalah",
    [
      Answer("Persegi", false),
      Answer("Jajar Genjang", false),
      Answer("Layang-layang", false),
      Answer("Belah ketupat", true),
    ],
  ));

//Soal 5
  list.add(Question(
    "assets/bangundatar/latihan2/blank.png",
    "Berikut adalah sifat-sifat bangun datar:\n1. sisinya sama panjang\n2. sudut berhadapan sama panjang\n3. kedua diagonalnya sama panjang\n4. sepasang sudut berhadapan sama besar\n5. dua pasang sisi sama panjang\n6. diagonalnya saling berpotongan tegak lurus\n7. mempunyai dua simetri lipat\n\nSifat-sifat bangun belah ketupat ditunjukkan oleh ….",
    [
      Answer("1, 2, 6, dan 7", true),
      Answer("2, 5, 6, dan 7", false),
      Answer("3, 4, 5, dan 7", false),
      Answer("1, 2, 4, dan 7", false),
    ],
  ));

//Soal 6
  list.add(Question(
    "assets/bangundatar/latihan2/blank.png",
    "Perhatikan sifat-sifat bangun datar berikut:\ni. Sepasang sisinya sejajar dan sepasang sisi yang\n   lain sama panjang\nii. Mempunyai dua pasang sudut yang sama besar\niii. Kedua diagonalnya sama panjang\n\nBangun datar yang memiliki sifat-sifat tersebut adalah...",
    [
      Answer("Jajargenjang", false),
      Answer("Belah ketupat", false),
      Answer("Layang-layang", false),
      Answer("Trapesium sama kaki", true),
    ],
  ));

//Soal 7
  list.add(Question(
    "assets/bangundatar/latihan2/blank.png",
    "Pernyataan berikut merupakan sifat dari segi empat:\ni. Mempunyai dua pasang sisi sama panjang\nii. Dua diagonalnya sama panjang dan saling\n    berpotongan di tengah-tengah\niii. Keempat sudutnya siku-siku\n\nKetiga sifat tersebut merupakan sifat dari...",
    [
      Answer("Belah Ketupat", false),
      Answer("Jajargenjang", false),
      Answer("Persegi Panjang", true),
      Answer("Trapesium", false),
    ],
  ));

//Soal 8
  list.add(Question(
    "assets/bangundatar/latihan2/blank.png",
    "Dari keempat pernyataan berikut, manakah yang merupakan sifat-sifat bangun persegi?",
    [
      Answer("Mempunyai tiga buah sisi", false),
      Answer(
          "Mempunyai dua diagonal yang saling\nberpotongan tegak lurus", false),
      Answer("Mempunyai empat titik sudut", true),
      Answer("Mempunyai satu simetri putar", false),
    ],
  ));

//Soal 9
  list.add(Question(
    "assets/bangundatar/latihan2/blank.png",
    "Perhatikan sifat-sifat bangun datar di bawah ini:\n1) Mempunyai 4 sisi\n2) 2 pasang sisi berdekatan sama panjang.\n3) Sepasang sudut berhadapan sama besar.\n4) Kedua diagonalnya berpotongan tegak lurus.\n\nBangun datar yang memiliki sifat-sifat tersebut adalah...",
    [
      Answer("Persegi Panjang", false),
      Answer("Layang-Layang", true),
      Answer("Jajar Genjang", false),
      Answer("Trapesium", false),
    ],
  ));

//Soal 10
  list.add(Question(
    "assets/bangundatar/latihan2/blank.png",
    "Diketahui sifat-sifat bangun datar berikut:\n1) mempunyai 4 titik sudut\n2) mempunyai sepasang sudut siku-siku\n3) mempunyai sepasang sisi sejajar\n\nBangun datar yang mempunyai sifat-sifat tersebut adalah...",
    [
      Answer("Persegi", false),
      Answer("Belah Ketupat", false),
      Answer("Trapesium siku-siku", true),
      Answer("Jajar Genjang", false),
    ],
  ));

  return list;
}
