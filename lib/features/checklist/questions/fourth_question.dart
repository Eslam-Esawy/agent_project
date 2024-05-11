import 'package:agent_project/features/checklist/custom_question_widget.dart';
import 'package:agent_project/features/checklist/questions/fifth_question.dart';
import 'package:agent_project/features/checklist/questions/third_question.dart';
import 'package:flutter/material.dart';

class FourthQuestion extends StatefulWidget {
  const FourthQuestion({super.key});

  @override
  State<FourthQuestion> createState() => _FourthQuestionState();
}

class _FourthQuestionState extends State<FourthQuestion> {
  @override
  Widget build(BuildContext context) {
    return CustomQuestionScreen(
      onGoBackTap: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const ThirdQuestion(),
        ));
      },
      onGoForwardTap: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const FifthQuestion(),
        ));
      },
      questionNumber: 'السؤال الرابع',
      question:
          'هل هناك مراجعات منتظمة للميزانيات والنفقات لضمان تحقيق الأهداف المالية؟',
    );
  }
}
