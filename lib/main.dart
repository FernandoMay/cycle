import 'package:flutter/material.dart';
import 'model.dart';
import 'style.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bicycle',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final producto = products[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 500,
              width: double.infinity,
              child: LayoutBuilder(
                builder: (cx, ct) {
                  double w = ct.maxWidth;
                  double h = ct.maxHeight;
                  return Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: w * .9,
                          height: h * .75,
                          color: Colors.deepPurpleAccent.withOpacity(.40),
                        ),
                      ),
                      Positioned(
                        top: 50.0,
                        left: 65.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              producto.type,
                              style: AppStyle.appbarStyle,
                            ),
                            SizedBox(
                              height: 12.0,
                            ),
                            Text(
                              producto.name,
                              style: AppStyle.headingStyle,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        child: Hero(
                          tag: producto.name,
                          child: Image.asset(
                            "bike.png",
                            width: 370,
                            height: 350,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    producto.description,
                    style: AppStyle.headingStyle2,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    producto.power,
                    style: AppStyle.headingStyle2,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    producto.descPost,
                    style: AppStyle.descStyle,
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 22.0),
                      child: IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
