import 'package:agent_project/features/checklist/custom_question_widget.dart';
import 'package:agent_project/features/checklist/questions/fourth_question.dart';
import 'package:agent_project/features/checklist/questions/second_question.dart';
import 'package:flutter/material.dart';

class ThirdQuestion extends StatefulWidget {
  const ThirdQuestion({super.key});

  @override
  State<ThirdQuestion> createState() => _ThirdQuestionState();
}

class _ThirdQuestionState extends State<ThirdQuestion> {
  @override
  Widget build(BuildContext context) {
    return CustomQuestionScreen(
      onGoBackTap: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const SecondQuestion(),
        ));
      },
      onGoForwardTap: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const FourthQuestion(),
        ));
      },
      questionNumber: 'السؤال الثالث',
      question:
          'هل هناك عملية معمول بها لمعالجة وحل أي مشكلات تتعلق بالجودة تنشأ؟',
    );
  }
}
