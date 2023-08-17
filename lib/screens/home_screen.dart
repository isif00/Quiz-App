import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:quiz_game/screens/quiz_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget activeScreen = const Home();

  void switchScreen() {
    setState(() {
      activeScreen = const QuizScreen();
    });
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
        const Text(
          "Learn Flutter the fun way !",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
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
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_circle_right_outlined,
                    color: Colors.white,
                  ),
                  Gap(10),
                  Text(
                    "Start Quiz !",
                    style: TextStyle(
                      color: Color.fromARGB(255, 13, 55, 138),
                      fontSize: 20,
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