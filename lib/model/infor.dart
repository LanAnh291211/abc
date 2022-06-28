import 'package:flutter/material.dart';

class Infor {
  Color? color;
  String? title;
  String? subTitile;
  String? releaseDay;
  String? nunber;
  Infor({
    required this.color,
    this.title = '',
    this.subTitile = '',
    required this.releaseDay,
    required this.nunber,
  });
}

List<Infor> inforListDemo = [
  Infor(
    color: Colors.purple[200],
    title: 'Meeting Room 2',
    subTitile: 'Level 5, Common Lab Space ',
    releaseDay: 'May 7 (Fri)',
    nunber: '1030 - 1200',
  ),
  Infor(
    color: Colors.pink[100],
    title: 'BSC 1 (Thermo)',
    subTitile: 'Level 1, Main Lab Space',
    releaseDay: 'May 7 (Fri)',
    nunber: '1030 - 1200',
  ),
  Infor(
    color: Colors.purple[200],
    title: 'Meeting Room 2',
    subTitile: 'Level 5, Common Lab Space ',
    releaseDay: 'May 7 (Fri)',
    nunber: '1030 - 1200',
  ),
  Infor(
    color: Colors.purple[200],
    title: 'Meeting Room 2',
    subTitile: 'Level 5, Common Lab Space ',
    releaseDay: 'May 7 (Fri)',
    nunber: '1030 - 1200',
  ),
  Infor(
    color: Colors.purple[200],
    title: 'Meeting Room 2',
    subTitile: 'Level 5, Common Lab Space ',
    releaseDay: 'May 7 (Fri)',
    nunber: '1030 - 1200',
  ),
  Infor(
    color: Colors.purple[200],
    title: 'Meeting Room 2',
    subTitile: 'Level 5, Common Lab Space ',
    releaseDay: 'May 7 (Fri)',
    nunber: '1030 - 1200',
  ),

];
