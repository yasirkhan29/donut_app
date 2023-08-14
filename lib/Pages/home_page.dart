import 'package:donut_app/TabBarPages/burger_tab.dart';
import 'package:donut_app/TabBarPages/donut_tab.dart';
import 'package:donut_app/TabBarPages/my_tab.dart';
import 'package:donut_app/TabBarPages/pancake_tab.dart';
import 'package:donut_app/TabBarPages/pizza_tab.dart';
import 'package:donut_app/TabBarPages/smoothie_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    //donut tab
    MyTab(
      iconPath: "icons/donut.png",
    ),
    // burger tab
    MyTab(
      iconPath: "icons/burger.png",
    ),
    // smoothie tab
    MyTab(
      iconPath: "icons/smoothie.png",
    ),
    // pancake tab
    MyTab(
      iconPath: "icons/pancakes.png",
    ),
    // Pizza tab
    MyTab(
      iconPath: "icons/pizza.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
                size: 36,
              ),
              onPressed: () {},
            ),
          ),
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[800],
                  size: 36,
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
        body: Column(
          children: [
            // i want to eat
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
              child: Row(
                children: [
                  Text(
                    "I want to eat",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "EAT",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            // tab bar
            TabBar(tabs: myTabs),
            //
            // tab view
            Expanded(
                child: TabBarView(
              children: [
                DonutTAb(),
                BurgerTab(),
                PancakeTab(),
                SmoothTab(),
                PizzaTab(),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
