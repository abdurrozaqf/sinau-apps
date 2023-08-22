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
    "assets/bangundatar/latihan3/no1.png",
    "Keliling sebuah persegi yang panjang sisinya 14 cm adalah ... cm.",
    [
      Answer("28", true),
      Answer("42", false),
      Answer("56", true),
      Answer("70", false),
    ],
  ));

//Soal 2
  list.add(Question(
    "assets/bangundatar/latihan3/no2.png",
    "Panjang sisi suatu persegi yang kelilingnya 64 cm adalah ... cm.",
    [
      Answer("4", false),
      Answer("8", false),
      Answer("16", true),
      Answer("32", false),
    ],
  ));

//Soal 3
  list.add(Question(
    "assets/bangundatar/latihan3/no3.png",
    "Keliling persegi panjang dengan panjang 15 cm dan lebar 10 cm adalah ... cm.",
    [
      Answer("150", false),
      Answer("25", false),
      Answer("50", true),
      Answer("40", false),
    ],
  ));

//Soal 4
  list.add(Question(
    "assets/bangundatar/latihan3/no4.png",
    "Sebuah persegi panjang kelilingnya 34 cm. Jika panjangnya adalah 9 cm, maka lebar persegi panjang tersebut adalah ... cm.",
    [
      Answer("4", false),
      Answer("6", false),
      Answer("7", false),
      Answer("8", true),
    ],
  ));

//Soal 5
  list.add(Question(
    "assets/bangundatar/latihan3/blank.png",
    "Sebuah persegi panjang sisinya 12 cm. Luas persegi tersebut adalah ... cm².",
    [
      Answer("144", true),
      Answer("120", false),
      Answer("156", false),
      Answer("256", false),
    ],
  ));

//Soal 6
  list.add(Question(
    "assets/bangundatar/latihan3/blank.png",
    "Panjang dan lebar suatu persegi panjang berturut-turut adalah 15 cm dan 12 cm. Luas persegi panjang tersebut adalah ... cm².",
    [
      Answer("150", false),
      Answer("170", false),
      Answer("210", false),
      Answer("180", true),
    ],
  ));

//Soal 7
  list.add(Question(
    "assets/bangundatar/latihan3/blank.png",
    "Sebuah persegi panjang luasnya 357 cm². Jika panjangnya 21 cm, maka lebar persegi panjang tersebut adalah ... cm.",
    [
      Answer("17", true),
      Answer("19", false),
      Answer("21", false),
      Answer("23", false),
    ],
  ));

//Soal 8
  list.add(Question(
    "assets/bangundatar/latihan3/no8.png",
    "Sebuah jajar genjang panjang alasnya 14 cm dan tingginya 15 cm. Luas jajar genjang tersebut adalah ... cm².",
    [
      Answer("29", false),
      Answer("58", false),
      Answer("105", false),
      Answer("210", true),
    ],
  ));

//Soal 9
  list.add(Question(
    "assets/bangundatar/latihan3/no9.png",
    "Sebuah trapesium panjang sisi atas dan sisi bawahnya berturut-turut adalah 8 cm dan 10 cm. Jika tingginya 9 cm, maka luas trapesium tersebut adalah ... cm².",
    [
      Answer("80", false),
      Answer("81", true),
      Answer("360", false),
      Answer("720", false),
    ],
  ));

//Soal 10
  list.add(Question(
    "assets/bangundatar/latihan3/no10.png",
    "Sebuah belah ketupat panjang diagonal-diagonalnya adalah 24 cm dan 22 cm. Luas bangun tersebut adalah ... cm².",
    [
      Answer("264", true),
      Answer("528", false),
      Answer("92", false),
      Answer("46", false),
    ],
  ));

  return list;
}
