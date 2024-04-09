import 'package:flutter/material.dart';
import 'package:lighting_store_app/ui/core/project_color.dart';
import 'package:lighting_store_app/ui/core/project_padding.dart';
import 'package:lighting_store_app/ui/demo_page1.dart';
import 'package:lighting_store_app/ui/demo_page2.dart';
import 'package:lighting_store_app/ui/demo_page3.dart';
import 'package:lighting_store_app/ui/demo_page4.dart';
import 'package:lighting_store_app/ui/demo_page5.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final imagePath = 'assets/png/ic_profile_photo.jpg';

  int selecktedIndex = 0;
  var page = [const DemoPage1(), const DemoPage2(), const DemoPage3(), const DemoPage4(), const DemoPage5()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: _appBarIconButton(),
          backgroundColor: ProjectColor.barColor,
          actions: [
            Padding(
              padding: ProjectPadding.paddingAllStandart,
              child: _ProfilePhotoWidget(imagePath: imagePath),
            ),
          ],
        ),
        body: page[selecktedIndex],
        bottomNavigationBar: _BottomNavigationBar());
  }

  ClipRRect _BottomNavigationBar() {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled, size: _IconSize().iconSizesMedium), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.favorite, size: _IconSize().iconSizesMedium), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.workspaces_sharp, size: _IconSize().iconSizesMedium), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag, size: _IconSize().iconSizesMedium), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person_2_rounded, size: _IconSize().iconSizesMedium), label: '')
          ],
          currentIndex: selecktedIndex,
          backgroundColor: ProjectColor.barColor,
          unselectedItemColor: ProjectColor.grayColor,
          selectedItemColor: ProjectColor.whiteColor,
          onTap: (indeks) {
            setState(() {
              selecktedIndex = indeks;
            });
          }),
    );
  }

  IconButton _appBarIconButton() => IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.menu_outlined,
        color: ProjectColor.whiteColor,
        size: _IconSize().iconSizesMedium,
      ));
}

class _ProfilePhotoWidget extends StatelessWidget {
  const _ProfilePhotoWidget({
    super.key,
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Column(
        children: [
          SizedBox(
            width: 35,
            height: 35,
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

class _IconSize {
  final double iconSizesMedium = 35.0;
  final double iconSizeSmall = 30.0;
}
