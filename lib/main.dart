import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "team.flow",
            style: TextStyle(
              fontSize: 20,
              fontFamily: "Josefinsans",
            ),
          ),
        ),
        endDrawer: const Drawer(),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Container(
                width: 159,
                height: 21,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(242, 249, 235, 1),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Get account of \$59",
                      style: TextStyle(
                        fontSize: 13,
                        color: Color.fromRGBO(53, 65, 75, 1),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Color.fromRGBO(53, 65, 75, 1),
                      size: 10,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
