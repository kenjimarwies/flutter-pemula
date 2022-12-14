import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_submission/model/cinema.dart';
import 'package:flutter_submission/screens/detail/components/header_detail.dart';
import 'package:flutter_submission/screens/detail/components/overview_detail.dart';
import 'package:flutter_submission/screens/detail/components/title_detail.dart';

class DetailPage extends StatelessWidget {
  final Cinema cinema;

  const DetailPage({Key key, this.cinema) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          child: Column(
            children: [
              HeaderDetail(cinema: cinema),
              TitleDetail(cinema: cinema),
              OverviewDetail()
            ],
          ),
        ),
      ),
    );
  }
}
