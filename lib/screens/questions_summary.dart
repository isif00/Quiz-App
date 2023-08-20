import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 300,
        child: SingleChildScrollView(
          child: Column(
            children: summaryData.map(
              (data) {
                return Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Text(
                        ((data['question_index'] as int) + 1).toString(),
                      ),
                    ),
                    const Gap(10),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(data['question'] as String),
                          const Gap(5),
                          Text((data['user_answer'] as String)),
                          const Gap(5),
                          Text(data['correct_answer'] as String),
                          const Gap(50),
                        ],
                      ),
                    )
                  ],
                );
              },
            ).toList(),
          ),
        ),
      ),
    );
  }
}
