import 'package:flutter/material.dart';
import 'package:agent_project/features/checklist/custom_question_widget.dart';
import 'package:agent_project/features/checklist/questions/sixth_question.dart';

class SeventhQuestion extends StatefulWidget {
  const SeventhQuestion({super.key});

  @override
  State<SeventhQuestion> createState() => _SeventhQuestionState();
}

class _SeventhQuestionState extends State<SeventhQuestion> {
  @override
  Widget build(BuildContext context) {
    return CustomQuestionScreen(
      onGoBackTap: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const SixthQuestion(),
        ));
      },
      onGoForwardTap: () {},
      questionNumber: 'السؤال السابع',
      question: 'هل يتم الرد على استفسارات العملاء ومخاوفهم بسرعة ومهنية؟',
    );
  }
}
