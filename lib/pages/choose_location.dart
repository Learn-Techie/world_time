import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async {
    //simulate  network request for a username
    String username = await Future.delayed(Duration(seconds: 3), () {
      print('yoshi');
      return 'yoshi';
    });


    print('in between****************************');
    //simulate network request to get bio of username
    String bio = await Future.delayed(Duration(seconds: 2), () {
      print('Veg Musician and Egg collector');
      return 'Veg Musician and Egg collector';
    });
    print('$username - $bio');
  }

  int counter = 0;

  @override
  void initState() {
    super.initState();
    print('InitState function run');
    getData();
  }
  @override
  Widget build(BuildContext context) {
    print('build function run');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: RaisedButton(
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        child: Text('counter is $counter'),
      )
    );
  }
}