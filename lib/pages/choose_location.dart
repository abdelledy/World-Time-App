import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  void getData() async {
    // simulate network request for a username
    String username = await Future.delayed(
      Duration(seconds: 3),
      () {
        return 'edy';
      },
    );

    String bio = await Future.delayed(
      Duration(seconds: 2),
      () {
        return 'Big, have a dream';
      },
    );

    print('This is $username he is: $bio');
  }

  @override
  void initState() {
    super.initState();
    getData();
    // print('init function ran');
  }

  @override
  Widget build(BuildContext context) {
    // print('build function ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
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
      ),
    );
  }
}
