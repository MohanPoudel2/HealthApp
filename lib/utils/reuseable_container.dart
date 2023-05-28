import 'package:flutter/material.dart';

class ReContainer extends StatelessWidget {
  final Color containerColor;
  final String text;
  final Color textColor;
  const ReContainer({Key? key,required this.containerColor,required this.text,required this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(15)

      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text(text,style: TextStyle(color: textColor),),
            const Text('mo',style: TextStyle(color: Colors.black26),)
          ],
        ),
      ),
    );
  }
}
