import 'package:abc/abc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'model/infor.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NSG Biolab"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("My Upcoming Bookings"),
          ListView.builder(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemCount: inforListDemo.length,
            itemBuilder: (BuildContext context, int index) {
              return _item(inforListDemo[index]);
            },
          ),
          
        ],
      ),
      floatingActionButton: FloatingActionButton(
           onPressed:()  => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Abc()),
    ),
            tooltip: 'Increment',
           child: const Icon(Icons.add),),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        // currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }

  Padding _item(Infor infor) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(
            width: 5.sp,
          ),
          Text(
            infor.title!,
            style: TextStyle(fontWeight: FontWeight.w900),
          ),
          Text(
            infor.subTitile!,
            style: TextStyle(fontWeight: FontWeight.w200),
          ),
          Row(
            children: [
              Text(
                infor.releaseDay!,
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
              Text(
                infor.nunber!,
                style: TextStyle(fontWeight: FontWeight.w300),
              )
            ],
          )
        ],
      ),
    );
  }
  

  void _onItemTapped(int value) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Abc()),
    );
  }
}
