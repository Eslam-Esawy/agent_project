import 'package:flutter/material.dart';
import 'package:agent_project/features/checklist/custom_question_widget.dart';
import 'package:agent_project/features/checklist/questions/first_question.dart';
import 'package:agent_project/features/checklist/questions/third_question.dart';

class SecondQuestion extends StatefulWidget {
  const SecondQuestion({super.key});

  @override
  State<SecondQuestion> createState() => _SecondQuestionState();
}

class _SecondQuestionState extends State<SecondQuestion> {
  @override
  Widget build(BuildContext context) {
    return CustomQuestionScreen(
      onGoBackTap: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const FirstQuestion(),
        ));
      },
      onGoForwardTap: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const ThirdQuestion(),
        ));
      },
      questionNumber: 'السؤال الثاني',
      question:
          'هل هناك اجتماعات تسجيل وصول منتظمة لمراجعة التقدم ومعالجة أي مشكلات أو عقبات؟',
    );
  }
}
