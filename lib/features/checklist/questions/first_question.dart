import 'package:flutter/material.dart';
import 'package:agent_project/features/checklist/custom_question_widget.dart';
import 'package:agent_project/features/checklist/questions/second_question.dart';

class FirstQuestion extends StatefulWidget {
  const FirstQuestion({super.key});

  @override
  State<FirstQuestion> createState() => _FirstQuestionState();
}

class _FirstQuestionState extends State<FirstQuestion> {
  @override
  Widget build(BuildContext context) {
    return CustomQuestionScreen(
      onGoBackTap: () {},
      onGoForwardTap: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const SecondQuestion(),
        ));
      },
      questionNumber: 'السؤال الاول',
      question: 'هل حصل الموظفون الجدد على جميع الأوراق اللازمة وأكملوها بدقة؟',
    );
  }
}
