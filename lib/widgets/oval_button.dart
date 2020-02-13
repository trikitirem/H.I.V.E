import 'package:flutter/material.dart';
import 'package:hive/const.dart';


class Oval extends StatelessWidget {
  Oval({
    this.measurement,
    this.unit,
    this.data,
    this.details,
  });
  final String measurement, unit, details;
  final int data;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: GestureDetector(
        onTap: () {
       /*   Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Details(
                        name: measurement,
                        detalis: details,
                      ))); */
        },
        child: ClipOval(
          child: Container(
            width: 100,
            height: 100,
            color: Color(kGrey),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    text: '$data',
                    style: kOvalButtonValue,
                    children: <TextSpan>[
                      TextSpan(
                        text: '$unit',
                        style: kOvalButtonValue.copyWith(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Text(
                  "$measurement",
                  style: kOvalButton,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
