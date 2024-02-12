import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/sura_model.dart';

class SuraDetails extends StatefulWidget {
  SuraDetails({super.key});
  static const String routeName = 'sura_details';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var suraModel = ModalRoute.of(context)!.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      readSuraFile(suraModel.index);
    }

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/bg3.png'), fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            suraModel.suraName,
            style: TextStyle(fontSize: 25),
          ),
        ),
        body: ListView.separated(
          separatorBuilder: (context, index) => Divider(
            thickness: 2,
            indent: 40,
            endIndent: 40,
          ),
          itemBuilder: (context, index) {
            return Text(
              '(${index}) ${verses[index]}',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
              ),
            );
          },
          itemCount: verses.length,
        ),
      ),
    );
  }

  readSuraFile(int index) async {
    String sura = await rootBundle.loadString("assets/Files/${index + 1}.txt");
    List<String> suraLines = sura.split('\n');
    verses = suraLines;
    setState(() {});
  }
}
