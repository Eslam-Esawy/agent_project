import 'package:agent_project/features/checklist/custom_question_widget.dart';
import 'package:agent_project/features/checklist/questions/fifth_question.dart';
import 'package:agent_project/features/checklist/questions/seventh_question.dart';
import 'package:flutter/material.dart';

class SixthQuestion extends StatefulWidget {
  const SixthQuestion({super.key});

  @override
  State<SixthQuestion> createState() => _SixthQuestionState();
}

class _SixthQuestionState extends State<SixthQuestion> {
  @override
  Widget build(BuildContext context) {
    return CustomQuestionScreen(
      onGoBackTap: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const FifthQuestion(),
        ));
      },
      onGoForwardTap: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const SeventhQuestion(),
        ));
      },
      questionNumber: 'السؤال السادس',
      question:
          'هل تم تدريب الموظفين على أفضل ممارسات الأمن السيبراني، مثل تجنب عمليات التصيد الاحتيالي واستخدام كلمات مرور آمنة؟',
    );
  }
}
