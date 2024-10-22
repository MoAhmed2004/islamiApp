import 'package:flutter/material.dart';

class VerseWidget extends StatelessWidget {
  final String verse;
  final verseNumber;
  const VerseWidget({required this.verseNumber,required this.verse});

  @override
  Widget build(BuildContext context) {
    return Text("$verse ($verseNumber)",
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
      style: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
    ),);
  }
}
