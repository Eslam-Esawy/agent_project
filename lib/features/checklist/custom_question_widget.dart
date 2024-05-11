import 'package:agent_project/core/app_colors.dart';
import 'package:agent_project/features/checklist/table_of_content_view.dart';
import 'package:flutter/material.dart';

class GradientBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..shader = LinearGradient(
        colors: [
          AppColors.getHeaderGradient().colors.first,
          AppColors.getHeaderGradient().colors.last,
        ],
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height))
      ..strokeWidth = 7
      ..style = PaintingStyle.stroke;

    Path path = Path()
      ..addRRect(RRect.fromRectAndRadius(
          Rect.fromLTWH(0, 0, size.width, size.height),
          const Radius.circular(10.0)));

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class CustomQuestionScreen extends StatefulWidget {
  final String questionNumber;
  final String question;
  final VoidCallback onGoForwardTap;
  final VoidCallback onGoBackTap;

  const CustomQuestionScreen({
    super.key,
    required this.questionNumber,
    required this.question,
    required this.onGoForwardTap,
    required this.onGoBackTap,
  });

  @override
  State<CustomQuestionScreen> createState() => _CustomQuestionScreenState();
}

class _CustomQuestionScreenState extends State<CustomQuestionScreen> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => const TableOfContent(),
                          ));
                        },
                        child: Image.asset('assets/Back To.png'),
                      ),
                    ),
                    ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return AppColors.getHeaderGradient()
                            .createShader(bounds);
                      },
                      child: const Text(
                        " قائمة المراجعة",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text('برجاء إجابة الأسئلة'),
                    const SizedBox(height: 5),
                    SizedBox(
                      height: 1,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.blackColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    CustomPaint(
                      painter: GradientBorderPainter(),
                      child: Container(
                        width: 305,
                        height: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                widget.questionNumber,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                height: 1,
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: AppColors.blackColor,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 30),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Text(
                                    widget.question,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Checkbox(
                                value: isChecked,
                                activeColor: AppColors.greenColor,
                                onChanged: (value) {
                                  setState(() {
                                    isChecked = value;
                                  });
                                },
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  GestureDetector(
                                    onTap: widget.onGoForwardTap,
                                    child: Container(
                                      height: 30,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: AppColors.blackColor,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child:
                                          Image.asset('assets/Microphone.png'),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: widget.onGoBackTap,
                                    child: Container(
                                      height: 30,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: AppColors.blackColor,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Image.asset('assets/Camera.png'),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: widget.onGoForwardTap,
                                    child: Image.asset('assets/Go Forward.png',
                                        color: AppColors.orangeColor),
                                  ),
                                  GestureDetector(
                                    onTap: widget.onGoBackTap,
                                    child: Image.asset('assets/Go Back.png',
                                        color: AppColors.orangeColor),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      height: 106,
                      width: 306,
                      child: TextFormField(
                        style:
                            const TextStyle(color: Colors.black), // Text color
                        decoration: InputDecoration(
                          labelText: 'أضف ملاحظة ...',
                          labelStyle: const TextStyle(color: Colors.grey),
                          fillColor: Colors.grey.withOpacity(0.2),
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: 158,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: AppColors.orangeColor),
                        child: const Text(
                          'حفظ',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: 252,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: AppColors.greenColor),
                        child: const Text(
                          'تـسـلـيـم',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                          textAlign: TextAlign.center,
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
      ),
    );
  }
}
