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

//Soal no 1
  list.add(Question(
    "assets/md/materi_3/3.1.png",
    "Diketahui panjang sisi persegi adalah 8 cm,\nmaka tentukanlah!.\na. Luas dari persegi dan\nb. Keliling dari persegi.",
    [
      Answer("Kll = 36 cm dan L 62 cm", false),
      Answer("Kll = 32 cm dan L 64 cm", true),
      Answer("Kll = 34 cm dan L 62 cm", false),
      Answer("Kll = 30 cm dan L 60 cm", false),
    ],
  ));

//Soal no 2
  list.add(Question(
    "assets/md/materi_3/3.2.png",
    "Panjang dari sebuah persegi panjang diketahui 15 cm. Jika lebar persegi panjang adalah 10 cm,\nmaka tentukan.\na. Luas persegi panjang dan\nb. Keliling persegi panjang",
    [
      Answer("Kll = 40 cm dan L 110 cm", false),
      Answer("Kll = 30 cm dan L 140 cm", false),
      Answer("Kll = 40 cm dan L 130 cm", false),
      Answer("Kll = 50 cm dan L 150 cm", true),
    ],
  ));

//Soal no 3
  list.add(Question(
    "assets/md/materi_3/3.3.png",
    "Jika sebuah jajar genjang mempunyai panjang sisi yaitu 14 cm dan 10 cm. Selain itu juga memiliki tinggi yaitu 9 cm.\nBerapakah luas dan keliling jajar genjang tersebut ?",
    [
      Answer("Kll = 44 cm dan L 120 cm", false),
      Answer("Kll = 41 cm dan L 122 cm", false),
      Answer("Kll = 48 cm dan L 126 cm", true),
      Answer("Kll = 42 cm dan L 124 cm", false),
    ],
  ));

//Soal no 4
  list.add(Question(
    "assets/md/materi_3/3.4.png",
    "Pada sebuah trapesium diketahui mempunyai panjang sisi yaitu 20 cm, 10 cm, dan 15 cm dan juga mempunyai tinggi yaitu 12 cm.\nHitunglah luas dari trapesium tersebut dengan tepat !",
    [
      Answer("Kll = 60 cm dan L 210 cm", true),
      Answer("Kll = 64 cm dan L 214 cm", false),
      Answer("Kll = 66 cm dan L 215 cm", false),
      Answer("Kll = 62 cm dan L 212 cm", false),
    ],
  ));

  return list;
}
