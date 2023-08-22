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
    "assets/md/materi_1/1.1.png",
    "Tentukan banyaknya segiempat yang terbentuk pada gambar tersebut!",
    [
      Answer("13", false),
      Answer("14", false),
      Answer("15", true),
      Answer("16", false),
    ],
  ));

//Soal no 2
  list.add(Question(
    "assets/md/materi_1/1.3.png",
    "Perhatikan segienam diatas. Tentukan banyak segitiga yang dapat ditemukan pada gambar tersebut adalah ...",
    [
      Answer("21", false),
      Answer("22", true),
      Answer("23", false),
      Answer("24", false),
    ],
  ));

//Soal no 3
  list.add(Question(
    "assets/md/materi_1/1.5.png",
    "Gamar diatas menunjukkan kegolong bangun datar adalah ...",
    [
      Answer("Segitiga", false),
      Answer("Segiempat", true),
      Answer("Segilima", false),
      Answer("Segienam", false),
    ],
  ));

//Soal no 4
  list.add(Question(
    "assets/md/materi_1/1.7.png",
    "Diketahui, pada gambar di atas adalah kumpulan dari bangun datar segiempat dan segitiga. Tentukan berapa jumlah dari masing-masing bangun datar tersebut!",
    [
      Answer("Segiempat 1 dan Segitiga 4", false),
      Answer("Segiempat 2 dan Segitiga 3", false),
      Answer("Segiempat 3 dan Segitiga 2", true),
      Answer("Segiempat 4 dan Segitiga 1", false),
    ],
  ));

  return list;
}
