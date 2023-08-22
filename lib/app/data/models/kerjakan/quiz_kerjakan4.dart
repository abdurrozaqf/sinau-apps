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
    "assets/md/materi_4/4.1.png",
    "Diketahui terdapat gambar segitiga yang ketiga sisinya sama panjang. Bangun apa yang terbentuk?",
    [
      Answer("Segitiga Tumpul", false),
      Answer("Segitiga Sembarang", false),
      Answer("Segitiga Sama Kaki", false),
      Answer("Segitiga Sama Sisi", true),
    ],
  ));

//Soal no 2
  list.add(Question(
    "assets/md/materi_4/4.2.png",
    "Diketahui terdapat gambar segitiga yang dua sisinya sama panjang. Bangun apa yang terbentuk?",
    [
      Answer("Segitiga Tumpul", false),
      Answer("Segitiga Sembarang", false),
      Answer("Segitiga Sama Kaki", true),
      Answer("Segitiga Sama Sisi", false),
    ],
  ));

//Soal no 3
  list.add(Question(
    "assets/md/materi_4/4.4.png",
    "Diketahui terdapat gambar segitiga yang salah satu sudutnya adalah 90°. Bangun apa yang terbentuk?",
    [
      Answer("Segitiga Lancip", false),
      Answer("Segitiga Siku-Siku", true),
      Answer("Segitiga Sama Kaki", false),
      Answer("Segitiga Sama Sisi", false),
    ],
  ));

//Soal no 4
  list.add(Question(
    "assets/md/materi_4/4.5.png",
    "Diketahui terdapat gambar segitiga yang semua sudutnya kurang dari 90°. Bangun apa yang terbentuk?",
    [
      Answer("Segitiga Lancip", true),
      Answer("Segitiga Siku-Siku", false),
      Answer("Segitiga Sama Kaki", false),
      Answer("Segitiga Sama Sisi", false),
    ],
  ));

  return list;
}
