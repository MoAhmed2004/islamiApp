import 'package:flutter/material.dart';

import '../../quran_details/quran_details_screen.dart';

class Quransurawidget extends StatelessWidget {
  String name;
  int number;
  int index;
  Quransurawidget({required this.index,required this.name,required this.number});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(QuranDetailsScreen.routeName,
            arguments:QuranDetailsArgs(index: index,
                name: name) );
      } ,
      child: Row(
      
        children: [
          Expanded(child: Text(name,textAlign: TextAlign.center,
            style:const TextStyle(
              fontSize: 25,
            ) ,)),
          Container(
            color: Theme.of(context).colorScheme.primary,
            height: height*0.08,
            width: width*0.01,
      
          ),
          Expanded(child: Text(number.toString(),textAlign: TextAlign.center,
            style:const TextStyle(
              fontSize: 25,
            ) ,)),
        ],
      ),
    );

  }
}
