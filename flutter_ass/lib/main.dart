import 'package:flutter/material.dart';
import 'package:flutter_ass/mydrawer.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);

    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return potraitWidget(_mediaQuery.size);
          } else {
            return landscapeWidget(_mediaQuery.size);
          }
        },
      ),
    );
  }

  Widget potraitWidget(Size size) {
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text('Second Assigment'),
          backgroundColor: Colors.purple,
        ),
        body: Container(),
        backgroundColor: Colors.red);
  }

  Widget landscapeWidget(Size size) {
    return Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Container(
        color: Colors.white,
        height: 400,
        width: 359,
        child: Text(
            'The first Element \n The Second Element \n The Third Element \n The Forth Element',
            textAlign: TextAlign.center),
        padding: EdgeInsets.all(100),
      ),
      Container(
        color: Colors.red,
        height: 400,
        width: 359,
      )
    ]);
  }
}
