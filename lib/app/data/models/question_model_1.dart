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
    "assets/bangundatar/latihan1/no1.png",
    "Perhatikan pada gammbar diatas. Gambar tersebut masuk kedalam golongan bangun datar ...",
    [
      Answer("Segitiga", false),
      Answer("Segilima", false),
      Answer("Segiempat", true),
      Answer("Segiemanm", false),
    ],
  ));

//Soal no 2
  list.add(Question(
    "assets/bangundatar/latihan1/no2.png",
    "Pada gambar diatas adalah bentuk gambar dari . . .",
    [
      Answer("Segitiga Sembarang", false),
      Answer("Segitiga Sama sisi", true),
      Answer("Segitiga Siku-siku", false),
      Answer("Segiempat", false),
    ],
  ));

//Soal no 3
  list.add(Question(
    "assets/bangundatar/latihan1/no3.png",
    "Pada gambar diatas adalah bentuk gambar dari . . .",
    [
      Answer("Segiempat", false),
      Answer("Trapesium", false),
      Answer("Segitiga", false),
      Answer("Jajar Genjang", true),
    ],
  ));

//Soal no 4
  list.add(Question(
    "assets/bangundatar/latihan1/no4.png",
    "Pada gambar tersebut berbentuk seperti layang-layang. Layang-layang masuk kedalam bangun datar apa?",
    [
      Answer("Segiemanm", false),
      Answer("Segitiga", false),
      Answer("Segiempat", true),
      Answer("Segilima", false),
    ],
  ));

//Soal no 5
  list.add(Question(
    "assets/bangundatar/latihan1/no5.png",
    "Pada gambar tersebut terdapat beberapa bangun datar segiempat dan segitifa. Jika dilihat dengan seksama, lebih banyak bangun datar?",
    [
      Answer("Segilima", false),
      Answer("Segiemanm", false),
      Answer("Segiempat", true),
      Answer("Segitiga", false),
    ],
  ));

//Soal no 6
  list.add(Question(
    "assets/bangundatar/latihan1/no6.png",
    "Apakah pada gambar diatas adalah bangun datar Trapesium?",
    [
      Answer("Benar", true),
      Answer("Salah", false),
    ],
  ));

//Soal no 7
  list.add(Question(
    "assets/bangundatar/latihan1/no7.png",
    "Apakah pada gambar diatas adalah bangun datar Segiempat?",
    [
      Answer("Benar", false),
      Answer("Salah", true),
    ],
  ));

//Soal no 8
  list.add(Question(
    "assets/bangundatar/latihan1/no8.png",
    "Pada gambar diatas adalah bentuk gambar dari . . .",
    [
      Answer("Layang-layang", false),
      Answer("Persegi", false),
      Answer("Belah Ketupat", false),
      Answer("Salah semua", false),
    ],
  ));

//Soal no 9
  list.add(Question(
    "assets/bangundatar/latihan1/no9.png",
    "Pada gambar diatas adalah bentuk gambar dari . . .",
    [
      Answer("Segilima", false),
      Answer("Segiempat", false),
      Answer("Segitiga Lancip", false),
      Answer("Segitiga Sembarang", true),
    ],
  ));

//Soal no 10
  list.add(Question(
    "assets/bangundatar/latihan1/no10.png",
    "Pada gambar tersebut berbentuk seperti Belah Ketupat. Belah Ketupat masuk kedalam bangun datar apa?",
    [
      Answer("Segilima", false),
      Answer("Segiempat", true),
      Answer("Segiemanm", false),
      Answer("Segitiga", false),
    ],
  ));

  return list;
}
