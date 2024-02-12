import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic_app/home/tabs/Radio_tab.dart';
import 'package:islamic_app/home/tabs/ahdeeth_tab.dart';
import 'package:islamic_app/home/tabs/quran_tab.dart';
import 'package:islamic_app/home/tabs/sebha_tab.dart';
import 'package:islamic_app/home/tabs/settings_tab.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  static const String routeName = 'Home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
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
              'إسلامي',
              style: GoogleFonts.elMessiri(
                  fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Color(0xFFB7935F),
              iconSize: 40,
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: true,
              showUnselectedLabels: false,
              unselectedItemColor: Colors.black,
              selectedFontSize: 20,
              selectedItemColor: Colors.white,
              currentIndex: index,
              onTap: (value) {
                setState(() {
                  index = value;
                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/radio.png')),
                    label: 'الراديو'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(
                        'assets/images/quran-quran-svgrepo-com.png')),
                    label: 'القرأن'),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/sebha_tab.png'),
                  ),
                  label: 'التسبح',
                ),
                BottomNavigationBarItem(
                    icon:
                        ImageIcon(AssetImage('assets/images/moshaf_blue.png')),
                    label: 'الاحاديث'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: 'الاعدادات'),
              ]),
          body: tabs[index],
        ),
      ),
    );
  }

  List<Widget> tabs = [
    RadioTab(),
    QuranTab(),
    SebhaTab(),
    AhdeethTab(),
    SettingsTab()
  ];
}
