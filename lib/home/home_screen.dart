import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/ahadethTab.dart';
import 'package:islami_app/home/tabs/quranTab.dart';

class HomeScreen extends StatefulWidget {
  static const String routname ="Home";

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> tabs=[
    Qurantab(),
    Ahadethtab(),

  ];
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill,
            image:AssetImage("assets/imgs/background.png")),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("إسلامي"),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index){
              setState(() {
                currentIndex=index;
              });
            },
            items:[
           BottomNavigationBarItem(icon:const ImageIcon(
            AssetImage("assets/imgs/moshaf_blue.png"),
          )
              ,label:"Quran",
            backgroundColor: Theme.of(context).colorScheme.primary,
          ),
          BottomNavigationBarItem(icon:const ImageIcon(
            AssetImage("assets/imgs/ahadeth_icon.png"),
          )
              ,label:"Ahadeth",
            backgroundColor: Theme.of(context).colorScheme.primary,

          ),
          BottomNavigationBarItem(icon:const ImageIcon(
            AssetImage("assets/imgs/sebha_icon.png"),
          )
              ,label:"Tsabeeh",
            backgroundColor: Theme.of(context).colorScheme.primary,

          ),  BottomNavigationBarItem(icon:const ImageIcon(
            AssetImage("assets/imgs/radio_blue.png"),
          )
              ,label:"Radio",
            backgroundColor: Theme.of(context).colorScheme.primary,
          ),
        ]
        ),
        body: tabs[currentIndex],
      ),
    );
  }
}
