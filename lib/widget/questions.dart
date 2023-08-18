import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class Question extends StatelessWidget {
  const Question({super.key, required this.answerText, required this.onTap});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        child: Column(
          children: [
            SizedBox(
              height: 50,
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
                onPressed: onTap,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.arrow_circle_right_outlined,
                      color: Colors.white,
                    ),
                    const Gap(10),
                    Expanded(
                      child: Wrap(
                        children: [
                          Text(
                            answerText,
                            style: GoogleFonts.comfortaa(
                              color: const Color.fromARGB(255, 13, 55, 138),
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Gap(10),
          ],
        ),
      ),
    );
  }
}
