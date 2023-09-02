// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../../widgets/button.dart';

// TODO: ใส่รหัสนักศึกษาที่ค่าสตริงนี้
const studentId = '07610736';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var value1 = false;
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_colorful.jpg"),
              opacity: 0.6,
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Good Morning',
                  textAlign: TextAlign.center, style: textTheme.headlineMedium),
              Text(studentId,
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black87)),
              Spacer(),
              _buildQuizView(),
              Spacer(),
              _buildButtonPanel(),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }

  _buildQuizView() {
    // TODO: build UI
    Expanded(
      child: Container(
        color: Color.fromRGBO(255, 255, 255, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 8.0),
            child: Text('Question 1 of 30', style: TextStyle(fontSize: 26.0)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Button(
                      text: 'A. Au',
                      color: Color.fromRGBO(255, 255, 255, 0),
                      isSelected: true,
                    ),
                  ),
                  Expanded(
                    child: Button(
                      text: 'B. Ag',
                      color: Colors.white,
                      isSelected: value1,
                    ),
                  ),
                  Expanded(
                    child: Button(
                      text: 'C. Fe',
                      color: Colors.white,
                      isSelected: value1,
                    ),
                  ),
                  Expanded(
                    child: Button(
                      text: 'D. Cu',
                      color: Colors.white,
                      isSelected: value1,
                      ),
                  ),
                ],
              )
            )
          ]
        )
      )
    );
  }

  _buildButtonPanel() {
  Center(
    child: Padding(
      padding: const EdgeInsets.all(20.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Button(
            text: '<',
            color: Colors.red,
              isSelected:true,
          )
        ),
    )
  );
    //return Center();
  }
}
