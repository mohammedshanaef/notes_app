import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:notes_app/views/screens/notes_views.dart';
import 'package:page_transition/page_transition.dart';

class OnBoardingViewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "Welcome From You In Notes App",
            body: "Orgnazie Your Notes In One Place",
            image: Center(child: Image.asset("assets/images/note1.png", height: 250)),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: "Many Different Colors",
            body: "You Can Chose The Color You Want on Your Note",
            image: Center(child: Image.asset("assets/images/note2.png", height: 250.0)),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: "Easy And Fast",
            body: "Edit Add And Change Color",
            image: Center(child: Image.asset("assets/images/note1.png", height: 250.0)),
            decoration: getPageDecoration(),
          ),
        ],
        onDone: () => goToHome(context), // when press on (start)
        onSkip: () => goToHome(context), // when press on (skip)
        showSkipButton: true,
        skip: const Text("Skip", style: TextStyle(fontWeight: FontWeight.bold)),
        next: const Icon(Icons.arrow_forward),
        done: const Text("Start", style: TextStyle(fontWeight: FontWeight.bold)),
        dotsDecorator: getDotsDecorator(),
      ),
    );
  }

  void goToHome(BuildContext context) {
    Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: const NotesViews()));
  }

  PageDecoration getPageDecoration() => const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 16),
        imagePadding: EdgeInsets.all(20),
      );

  DotsDecorator getDotsDecorator() => DotsDecorator(
        color: Colors.grey,
        activeColor: Colors.blue,
        size: Size(10, 10),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      );
}
