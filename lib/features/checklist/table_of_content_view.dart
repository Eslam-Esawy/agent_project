import 'package:flutter/material.dart';
import 'package:agent_project/core/app_colors.dart';
import 'package:agent_project/features/checklist/questions/first_question.dart';

class TableOfContent extends StatefulWidget {
  const TableOfContent({super.key});

  // const TableOfContent({super.key, Key? key});

  @override
  State<TableOfContent> createState() => _TableOfContentState();
}

class _TableOfContentState extends State<TableOfContent> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {},
                  child: Image.asset('assets/Back To.png'),
                ),
              ),
              const SizedBox(height: 5),

              Image.asset('assets/Title.png'),
              const SizedBox(height: 5),

              const SizedBox(height: 10),

              // Use Flexible to make the text and table scrollable
              Flexible(
                child: ListView(
                  padding: const EdgeInsets.all(10),
                  children: [
                    const Text(
                      "التاريخ: ..........................",
                    ),
                    const SizedBox(height: 5),

                    Image.asset('assets/table.png'),
                    const SizedBox(height: 40),

                    // The Button
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const FirstQuestion(),
                        ));
                      },
                      child: Container(
                        height: 47,
                        width: 20,
                        decoration: BoxDecoration(
                          color: AppColors.orangeColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'اضغط للاجابة',
                          style: TextStyle(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
