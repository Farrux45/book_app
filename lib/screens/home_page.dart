import 'package:book_app/core/constants/color_const.dart';
import 'package:book_app/core/constants/config_size.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1.0,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/yellow.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: PhysicalModel(
          color: ColorConst.white,
          elevation: 20.0,
          child: Container(
            width: getWidth(337.0),
            height: getHeight(350.0),
            child: SizedBox(
              height: getWidth(50.0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: getWidth(15.0),
                      right: getWidth(15.0),
                      top: getHeight(25.0),
                      bottom: getHeight(25.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
