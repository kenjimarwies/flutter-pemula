import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_submission/model/cinema.dart';

class HeaderDetail extends StatelessWidget {
  final Cinema cinema;

  const HeaderDetail({
    Key key,
    this.cinema,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Hero(
            tag: cinema.title,
            child: ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40)),
              child: Image.asset(
                "assets/images/${cinema.poster}",
                fit: BoxFit.cover,
                width: double.infinity,
                height: 300,
              ),
            ),
          ),
          SafeArea(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.darkred[400],
                ),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(20),
                child: Icon(
                  CupertinoIcons.back,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
