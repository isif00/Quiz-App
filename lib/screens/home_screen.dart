import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_game/screens/quiz_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget activeScreen = const Home();

  void switchScreen() {
    setState(
      () {
        activeScreen = const QuizScreen();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/quiz-logo.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const Gap(20),
        Text(
          "Learn Flutter the fun way !",
          style: GoogleFonts.comfortaa(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Gap(10),
        Center(
          child: SizedBox(
            width: 200,
            child: OutlinedButton(
              style: ButtonStyle(
                side: MaterialStateProperty.resolveWith<BorderSide>(
                  (Set<MaterialState> states) {
                    Color borderColor =
                        const Color.fromARGB(255, 255, 255, 255);
                    return BorderSide(color: borderColor);
                  },
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const QuizScreen(),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.arrow_circle_right_outlined,
                    color: Colors.white,
                  ),
                  const Gap(10),
                  Text(
                    "Start Quiz !",
                    style: GoogleFonts.comfortaa(
                      color: const Color.fromARGB(255, 13, 55, 138),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
