import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Question extends StatelessWidget {
  const Question({super.key, required this.answerText, required this.onTap});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 200,
        child: Column(
          children: [
            OutlinedButton(
              style: ButtonStyle(
                side: MaterialStateProperty.resolveWith<BorderSide>(
                  (Set<MaterialState> states) {
                    Color borderColor =
                        const Color.fromARGB(255, 255, 255, 255);
                    return BorderSide(color: borderColor);
                  },
                ),
              ),
              onPressed: onTap,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.arrow_circle_right_outlined,
                    color: Colors.white,
                  ),
                  const Gap(10),
                  Text(
                    answerText,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 13, 55, 138),
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(10),
          ],
        ),
      ),
    );
  }
}
