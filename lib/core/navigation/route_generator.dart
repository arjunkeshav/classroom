import 'package:flutter/material.dart';

import '../../src/classroom/classroom.dart';
import '../../src/home/home.dart';
import '../../src/splash/splash.dart';
import '../../src/students/students.dart';
import '../../src/subjects/subjects.dart';
import '../../utils/common/common.dart';

class RouteGenerator {
  RouteGenerator._();

  static const splashScreen = '/';
  static const homePage = '/home';
  static const studentListPage = '/student';
  static const studentDetailsPage = '/student_details';
  static const subjectListPage = '/subject';
  static const detailsPage = '/details_page';
  static const classRoomListPage = '/class_room';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case homePage:
        return animatedRoute(const HomePage());
      case studentListPage:
        return animatedRoute(const StudentListPage());
      case subjectListPage:
        return animatedRoute(const SubjectListPage());
      case detailsPage:
        final DetailsPageParam detailsPageParam = settings.arguments as DetailsPageParam;
        return animatedRoute(DetailsPageWidget(
          details: detailsPageParam,
        ));
      case classRoomListPage:
        return animatedRoute(const ClassroomListPage());

      default:
        return _errorRoute();
    }
  }

  static PageRouteBuilder animatedRoute(Widget screenName) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => screenName,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeIn;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          iconTheme: const IconThemeData(color: Colors.black38),
          foregroundColor: Colors.white,
          title: const Text(""),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: const Center(
          child: SizedBox(height: 200, width: 250, child: Text('Wrong Screen')),
        ),
      );
    });
  }
}
