import 'package:agent_project/features/checklist/custom_question_widget.dart';
import 'package:agent_project/features/checklist/questions/fourth_question.dart';
import 'package:agent_project/features/checklist/questions/sixth_question.dart';
import 'package:flutter/material.dart';

class FifthQuestion extends StatefulWidget {
  const FifthQuestion({super.key});

  @override
  State<FifthQuestion> createState() => _FifthQuestionState();
}

class _FifthQuestionState extends State<FifthQuestion> {
  @override
  Widget build(BuildContext context) {
    return CustomQuestionScreen(
      onGoBackTap: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const FourthQuestion(),
        ));
      },
      onGoForwardTap: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const SixthQuestion(),
        ));
      },
      questionNumber: 'السؤال الخامس',
      question:
          'هل تم تدريب الموظفين على إجراءات السلامة وعلى دراية ببروتوكولات الطوارئ؟',
    );
  }
}
