import 'package:codelab_4/pages/landing_page.dart';
import 'package:flutter/material.dart';

import '../utilities.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  AnimationController? donutController;
  Animation<double>? rotationAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    donutController =
        AnimationController(duration: const Duration(seconds: 5), vsync: this)
          ..repeat();

    rotationAnimation = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(parent: donutController!, curve: Curves.linear));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    donutController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 5),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => LandingPage(),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Utils.mainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          RotationTransition(
            turns: rotationAnimation!,
            child: Image.network(
              Utils.donutLogoWhiteNoText,
              width: 100,
              height: 100,
            ),
          ),
          Image.network(
            Utils.donutLogoWhiteText,
            width: 150,
            height: 150,
          )
        ],
      ),
    );
  }
}
