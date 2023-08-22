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
    "assets/md/materi_2/persegi.png",
    "Diketahui panjang AB = 6 cm dan panjang AO = 3√2 cm\nTentukan:\na.  Panjang BC, CD, AD.\nb.  Panjang CO, BO, dan DO.\nc.  Panjang AC dan BD.\nd.  Besar Sudut ABC dan AOB.",
    [
      Answer("6 cm, 3√2 cm, 8√2 cm, dan 70°", false),
      Answer("4 cm, 3√4 cm, 4√2 cm, dan 60°", false),
      Answer("6 cm, 3√2 cm, 6√2 cm, dan 90°", true),
      Answer("4 cm, 3√5 cm, 2√2 cm, dan 80°", false),
    ],
  ));

//Soal no 2
  list.add(Question(
    "assets/md/materi_2/persegipanjang.png",
    "Diketahui panjang AB = 10 cm dan AD = 6 cm.\nTentukan:\na. panjang CD.\nb. panjang BC.",
    [
      Answer("6 cm dan 6 cm", false),
      Answer("10 cm dan 6 cm", true),
      Answer("12 cm dan 4 cm", false),
      Answer("4 cm dan 6 cm", false),
    ],
  ));

//Soal no 3
  list.add(Question(
    "assets/md/materi_2/jajargenjang.png",
    "Diketahui jajargenjang KLMN memiliki panjang KL = 12 cm, panjang\nLM = 10 cm dan besar ∠KNM = 140°\nTentukan:\na. Panjang ruas garis belum diketahui\nb. Besar sudut yang belum diketahui",
    [
      Answer("MN = 11 cm, KN = 11 cm dan m∠KLM = 120°, m∠LMN = 20°", false),
      Answer("MN = 12 cm, KN = 10 cm dan m∠KLM = 140°, m∠LMN = 40°", true),
      Answer("MN = 13 cm, KN = 12 cm dan m∠KLM = 130°, m∠LMN = 10°", false),
      Answer("MN = 14 cm, KN = 13 cm dan m∠KLM = 110°, m∠LMN = 30°", false),
    ],
  ));

//Soal no 4
  list.add(Question(
    "assets/md/materi_2/trapesium.png",
    "Diketahui DC : AB = 3 : 5\nTentukan:\na. Besar ∠D, dan\nb. Panjang DC",
    [
      Answer("m∠D = 70° dan DC = 13 cm", false),
      Answer("m∠D = 80° dan DC = 16 cm", false),
      Answer("m∠D = 90° dan DC = 15 cm", true),
      Answer("m∠D = 100° dan DC = 14 cm", false),
    ],
  ));

  return list;
}
