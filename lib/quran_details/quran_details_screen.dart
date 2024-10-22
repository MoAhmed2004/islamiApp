import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/quran_details/verseWidget.dart';

class QuranDetailsScreen extends StatefulWidget {
  static const String routeName = "qurandetails";

  @override
  State<QuranDetailsScreen> createState() => QuranDetailsScreenState();
}

class QuranDetailsScreenState extends State<QuranDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    QuranDetailsArgs args = ModalRoute.of(context)?.settings.arguments as QuranDetailsArgs;

      loadFile(args.index);


    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill,
            image:AssetImage("assets/imgs/background.png")),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.name),
        ),
        body:Card(
          child: lines.isEmpty
              ?Center(child: CircularProgressIndicator(),)
              :Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView.separated(itemBuilder:(context, index) => VerseWidget(
                            verse: lines[index],
                            verseNumber: index+1,
                          ),
                separatorBuilder:(context, index) => Divider(),
                itemCount: lines.length),
              ),
        )
      ),
    );
  }

  List<String> lines=[ ];

  loadFile(int index)async{
   String fileContent = await rootBundle.loadString("assets/files/${index + 1}.txt");
    lines = fileContent.split("\n");
    setState(() {

    });

  }
}
class QuranDetailsArgs{
  String name;
  int index;
  QuranDetailsArgs({required this.index,required this.name});
}