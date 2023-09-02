import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color color;
  final bool isSelected;

  const Button({
    super.key,
    required this.text,
    required this.color,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: isSelected ? color : Color.fromRGBO(236, 247, 255, 0),
          borderRadius: BorderRadius.circular(40.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 7,
              blurRadius: 12,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                  )
              )
            ]
        )
    );
  }
}