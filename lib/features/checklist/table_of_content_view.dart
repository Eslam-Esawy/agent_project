import 'package:flutter/material.dart';
import 'package:agent_project/core/app_colors.dart';
import 'package:agent_project/features/checklist/questions/first_question.dart';

class TableOfContent extends StatefulWidget {
  const TableOfContent({super.key});

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
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
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

                  const Text(
                    "التاريخ: ..........................",
                  ),
                  const SizedBox(height: 5),

                  //TABLE OF CONTENTS
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Table(
                      border: TableBorder.all(color: AppColors.blackColor),
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.middle,
                      children: [
                        //First Row
                        TableRow(
                            decoration: BoxDecoration(
                              color: AppColors.greenColor,
                            ),
                            children: const [
                              TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('م'),
                                ),
                              ),
                              TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('الاسألة'),
                                ),
                              ),
                            ]),

                        //First Question
                        const TableRow(children: [
                          TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                '١',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                  'هل حصل الموظفون الجدد على جميع الأوراق اللازمة وأكملوها بدقة؟'),
                            ),
                          ),
                        ]),

                        //Second Question
                        const TableRow(children: [
                          TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                '٢',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                  'هل هناك اجتماعات تسجيل وصول منتظمة لمراجعة التقدم ومعالجة أي مشكلات أو عقبات؟'),
                            ),
                          ),
                        ]),

                        //Third Question
                        const TableRow(children: [
                          TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                '٣',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                  'هل هناك عملية معمول بها لمعالجة وحل أي مشكلات تتعلق بالجودة تنشأ؟'),
                            ),
                          ),
                        ]),

                        //Fourth Question
                        const TableRow(children: [
                          TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                '٤',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                  'هل هناك مراجعات منتظمة للميزانيات والنفقات لضمان تحقيق الأهداف المالية؟'),
                            ),
                          ),
                        ]),

                        //Fifth Question
                        const TableRow(children: [
                          TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                '٥',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                  'هل تم تدريب الموظفين على إجراءات السلامة وعلى دراية ببروتوكولات الطوارئ؟'),
                            ),
                          ),
                        ]),

                        //Sixth Question
                        const TableRow(children: [
                          TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                '٦',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                  'هل تم تدريب الموظفين على أفضل ممارسات الأمن السيبراني، مثل تجنب عمليات التصيد الاحتيالي واستخدام كلمات مرور آمنة؟'),
                            ),
                          ),
                        ]),

                        //Seventh Question
                        const TableRow(children: [
                          TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                '٧',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                  'هل يتم الرد على استفسارات العملاء ومخاوفهم بسرعة ومهنية؟'),
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ),

                  // The Button
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const FirstQuestion(),
                      ));
                    },
                    child: Container(
                      height: 47,
                      width: 200,
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
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
