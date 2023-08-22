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
    "assets/bangundatar/latihan5/blank.png",
    "Sebuah segitiga mempunyai alas 5 cm dan tinggi 10 cm. maka luas segitiga tersebut adalah...",
    [
      Answer("20 cm²", false),
      Answer("25 cm²", true),
      Answer("30 cm²", false),
      Answer("15 cm²", false),
    ],
  ));

//Soal 2
  list.add(Question(
    "assets/bangundatar/latihan5/blank.png",
    "Segitiga ABC sama kaki memiliki panjang. AB=AC=10 cm dan panjang BC= 7 cm. Keliling segitiga ABC adalah ... cm.",
    [
      Answer("27", true),
      Answer("24", false),
      Answer("22", false),
      Answer("17", false),
    ],
  ));

//Soal 3
  list.add(Question(
    "assets/bangundatar/latihan5/blank.png",
    "Rumus mencari luas segitiga adalah...",
    [
      Answer("a x t", false),
      Answer("a + b + c", false),
      Answer("(a x t) : 2", true),
      Answer("(a x t) x 2", false),
    ],
  ));

//Soal 4
  list.add(Question(
    "assets/bangundatar/latihan5/no4.png",
    "Keliling bangun berikut adalah...cm",
    [
      Answer("21", false),
      Answer("22", false),
      Answer("24", true),
      Answer("25", false),
    ],
  ));

//Soal 5
  list.add(Question(
    "assets/bangundatar/latihan5/no5.png",
    "Berapakah luas bangun datar segitiga tersebut?",
    [
      Answer("54 cm²", true),
      Answer("56 cm²", false),
      Answer("64 cm²", false),
      Answer("44 cm²", false),
    ],
  ));

//Soal 6
  list.add(Question(
    "assets/bangundatar/latihan5/no6.png",
    "Berapakah luas segitiga pada gambar",
    [
      Answer("45 cm²", false),
      Answer("35 cm²", false),
      Answer("55 cm²", false),
      Answer("65 cm²", true),
    ],
  ));

//Soal 7
  list.add(Question(
    "assets/bangundatar/latihan5/blank.png",
    "Ratna membeli kue berbentuk segitiga. Jika sisi-sisinya 30 cm, 20 cm, dan 35 cm berapa keliling permukaan kue tersebut?",
    [
      Answer("80 cm", false),
      Answer("85 cm", true),
      Answer("90 cm", false),
      Answer("95 cm", false),
    ],
  ));

//Soal 8
  list.add(Question(
    "assets/bangundatar/latihan5/blank.png",
    "Sebuah segitiga mempunyai panjang alas 6 cm dan tinggi 8 cm. Luas segitiga tersebut adalah .... cm²",
    [
      Answer("96", false),
      Answer("48", false),
      Answer("24", true),
      Answer("14", false),
    ],
  ));

//Soal 9
  list.add(Question(
    "assets/bangundatar/latihan5/no9.png",
    "keliling bangun berikut ini adalah .... cm",
    [
      Answer("9", true),
      Answer("6", false),
      Answer("3", false),
      Answer("12", false),
    ],
  ));

//Soal 10
  list.add(Question(
    "assets/bangundatar/latihan5/blank.png",
    "Alas segitiga yang memiliki luas 36 cm² dan tinggi 9 cm adalah … cm.",
    [
      Answer("324", false),
      Answer("90", false),
      Answer("8", true),
      Answer("4", false),
    ],
  ));

  return list;
}
