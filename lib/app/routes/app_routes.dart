import 'package:get/get.dart';
import 'package:sinau_apps/app/modules/materi/view/1/kerjakan1.dart';
import 'package:sinau_apps/app/widgets/about.dart';

import '../modules/home/views/home_view.dart';
import '../modules/materi/view/2/kerjakan2.dart';
import '../modules/materi/view/3/kerjakan3.dart';
import '../modules/materi/view/4/kerjakan4.dart';
import '../modules/materi/view/5/kerjakan5.dart';
import '../modules/onboarding/views/boarding_view.dart';
import '../modules/indikator/views/indikator_view.dart';
import '../modules/materi/view/materi_view.dart';
import '../modules/materi/view/materi_video.dart';
import '../modules/evaluasi/views/evaluasi_view.dart';

import '../modules/materi/view/1/kegiatan1_view.dart';
import '../modules/materi/view/2/kegiatan2_view.dart';
import '../modules/materi/view/3/kegiatan3_view.dart';
import '../modules/materi/view/4/kegiatan4_view.dart';
import '../modules/materi/view/5/kegiatan5_view.dart';

import '../modules/materi/view/1/cnth_kegiatan1_view.dart';
import '../modules/materi/view/2/cnth_kegiatan2_view.dart';
import '../modules/materi/view/3/cnth_kegiatan3_view.dart';
import '../modules/materi/view/4/cnth_kegiatan4_view.dart';
import '../modules/materi/view/5/cnth_kegiatan5_view.dart';

import '../modules/materi/view/video_view/video1.dart';
import '../modules/materi/view/video_view/video2.dart';
import '../modules/materi/view/video_view/video3.dart';
import '../modules/materi/view/video_view/video4.dart';
import '../modules/materi/view/video_view/video5.dart';

import '../modules/quiz/views/quiz_timer.dart';
import '../modules/quiz/views/quiz_view_1.dart';
import '../modules/quiz/views/quiz_view_2.dart';
import '../modules/quiz/views/quiz_view_3.dart';
import '../modules/quiz/views/quiz_view_4.dart';
import '../modules/quiz/views/quiz_view_5.dart';

class AppPage {
  static final pages = [
    GetPage(
      name: '/onboarding',
      page: () => const OnBoardingScreen(),
    ),
    GetPage(
      name: '/homeview',
      page: () => const HomeView(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/aboutview',
      page: () => const AboutView(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: '/indikatorview',
      page: () => const IndikatorView(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/materiview',
      page: () => const MateriView(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/materivideolist',
      page: () => const MateriVideoList(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/kegiatan1view',
      page: () => const Kegiatan1View(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/kegiatan2view',
      page: () => const Kegiatan2View(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/kegiatan3view',
      page: () => const Kegiatan3View(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/kegiatan4view',
      page: () => const Kegiatan4View(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/kegiatan5view',
      page: () => const Kegiatan5View(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/contohkegiatan1view',
      page: () => const ContohKegiatan1View(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/contohkegiatan2view',
      page: () => const ContohKegiatan2View(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/contohkegiatan3view',
      page: () => const ContohKegiatan3View(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/contohkegiatan4view',
      page: () => const ContohKegiatan4View(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/contohkegiatan5view',
      page: () => const ContohKegiatan5View(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/kerjakan1',
      page: () => const KerjakanView1(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/kerjakan2',
      page: () => const KerjakanView2(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/kerjakan3',
      page: () => const KerjakanView3(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/kerjakan4',
      page: () => const KerjakanView4(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/kerjakan5',
      page: () => const KerjakanView5(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/video1view',
      page: () => const Video1(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/video2view',
      page: () => const Video2(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/video3view',
      page: () => const Video3(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/video4view',
      page: () => const Video4(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/video5view',
      page: () => const Video5(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/evaluasiview',
      page: () => const EvaluasiView(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/quizview1',
      page: () => const QuizView1(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/quizview2',
      page: () => const QuizView2(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/quizview3',
      page: () => const QuizView3(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/quizview4',
      page: () => const QuizView4(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/quizview5',
      page: () => const QuizView5(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/quizviewtimer',
      page: () => const QuizViewTimer(),
      transition: Transition.rightToLeft,
    ),
  ];
}
