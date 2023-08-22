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
    "assets/bangundatar/latihan4/blank.png",
    "Segitiga ditinjau dari panjang sisinya adalah...",
    [
      Answer("Segitiga Sama Kaki", true),
      Answer("Segitiga Siku-Siku", false),
      Answer("Segitiga Tumpul", false),
      Answer("Segitiga Lancip", false),
    ],
  ));

//Soal 2
  list.add(Question(
    "assets/bangundatar/latihan4/blank.png",
    "Segitiga ditinjau dari besar sudutnya adalah...",
    [
      Answer("Segitga Lancip", true),
      Answer("Segitiga Sama Sisi", false),
      Answer("Segitiga Sama Kaki", false),
      Answer("Segitiga Sembarang", false),
    ],
  ));

//Soal 3
  list.add(Question(
    "assets/bangundatar/latihan4/blank.png",
    "Berdasarkan panjang sisinya, segitiga dapat dibedakan menjadi...",
    [
      Answer("Sama Kaki, Sama Sisi, Sembarang", true),
      Answer("Sama Sisi, Siku-Siku, Sembarang", false),
      Answer("Lancip, Siku-Siku, Tumpul", false),
      Answer("Sama Kaki, Siku-Siku, Lancip", false),
    ],
  ));

//Soal 4
  list.add(Question(
    "assets/bangundatar/latihan4/blank.png",
    "Sifat-sifat bangun datar sebagai berikut:\n•	Mempunyai tiga sudut sama besar\n•	Mempunyai tiga simetri lipat\n•	Mempunyai simetri putar tingkat tiga\n\nBangun datar yang memiliki sifat-sifat di atas adalah...",
    [
      Answer("Segitiga Siku-Siku", false),
      Answer("Segitiga Sama Kaki", false),
      Answer("Segitiga Sama Sisi", true),
      Answer("Segitiga Sembarang", false),
    ],
  ));

//Soal 5
  list.add(Question(
    "assets/bangundatar/latihan4/blank.png",
    "Berikut ini adalah jenis segitiga berdasarkan besar sudutnya, kecuali",
    [
      Answer("Segitiga Lancip", false),
      Answer("Segitiga Tumpul", false),
      Answer("Segitiga Siku-Siku", false),
      Answer("Segitiga Sebarang", true),
    ],
  ));

//Soal 6
  list.add(Question(
    "assets/bangundatar/latihan4/blank.png",
    "Suatu bangun datar memiliki ciri-ciri sebagai berikut:\n•	Memiliki sepasang sisi sama panjang\n•	Memiliki sepasang sudut sama besar\n•	Memiliki satu sumbu simetri\n\nBangun datar yang dimaksud adalah...",
    [
      Answer("Segitiga Sama Kaki", true),
      Answer("Trapesium", false),
      Answer("Layang-Layang", false),
      Answer("Jajar Genjang", false),
    ],
  ));

//Soal 7
  list.add(Question(
    "assets/bangundatar/latihan4/blank.png",
    "Sifat-sifat bangun datar sebagai berikut\n•	Mempunyai tiga sudut sama besar\n•	Mempunyai tiga simetri lipat\n•	Mempunyai simetri putar tingkat tiga\n\nBangun datar yang memiliki sifat-sifat di atas adalah...",
    [
      Answer("Segitiga Siku-Siku", false),
      Answer("Segitiga Sama Kaki", false),
      Answer("Segitiga Sama Sisi", true),
      Answer("Segitiga Sembarang", false),
    ],
  ));

//Soal 8
  list.add(Question(
    "assets/bangundatar/latihan4/blank.png",
    "Benar atau Salah\nSebuah segitiga siku-siku dapat mempunyai satu sudut tumpul",
    [
      Answer("Benar", false),
      Answer("Salah", true),
    ],
  ));

//Soal 9
  list.add(Question(
    "assets/bangundatar/latihan4/blank.png",
    "Segitiga yang ketiga sisinya tidak sama panjang disebut?",
    [
      Answer("Δ Sama Sisi", false),
      Answer("Δ Sembarang", true),
      Answer("Δ Lancip", false),
      Answer("Δ Sama Kaki", false),
    ],
  ));

//Soal 10
  list.add(Question(
    "assets/bangundatar/latihan4/blank.png",
    "Bangun datar yang dibatasi oleh tiga garis lurus dan membentuk tiga sudut adalah...",
    [
      Answer("Segiempat", false),
      Answer("Segitiga", true),
      Answer("Segienam", false),
      Answer("Segilima", false),
    ],
  ));

  return list;
}
