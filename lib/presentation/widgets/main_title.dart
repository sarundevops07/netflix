import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class MainTitleWidget extends StatelessWidget {
  const MainTitleWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.montserrat(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
