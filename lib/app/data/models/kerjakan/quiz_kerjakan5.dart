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
    "assets/bangundatar/latihan5/blank.png",
    "Hitunglah Keliling segitiga sama sisi dengan panjang sisi 26 cm adalah ...",
    [
      Answer("72", false),
      Answer("78", true),
      Answer("80", false),
      Answer("82", false),
    ],
  ));

//Soal no 2
  list.add(Question(
    "assets/bangundatar/latihan5/blank.png",
    "Jika sebuah segitiga panjang alasnya 14 m dan tingginya 17 m, berapa luasnya?",
    [
      Answer("118", false),
      Answer("119", true),
      Answer("120", false),
      Answer("121", false),
    ],
  ));

//Soal no 3
  list.add(Question(
    "assets/bangundatar/latihan5/blank.png",
    "Diketahui segitiga ABC siku-siku di B. Jika luas segitiga ABC 105 cm² dan panjang AB = 14 cm, maka panjang BC adalah .... cm.",
    [
      Answer("15", true),
      Answer("16", false),
      Answer("17", false),
      Answer("18", false),
    ],
  ));

//Soal no 4
  list.add(Question(
    "assets/bangundatar/latihan5/blank.png",
    "Sebuah papan reklame berbentuk segitiga, memiliki panjang alas 65 cm dan luasnya 1.625 cm², maka tingginya adalah .... cm",
    [
      Answer("50", true),
      Answer("52", false),
      Answer("54", false),
      Answer("55", false),
    ],
  ));

  return list;
}
