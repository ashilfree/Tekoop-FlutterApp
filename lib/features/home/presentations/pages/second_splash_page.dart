import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tekoop/core/routes/routes.dart';
import 'package:tekoop/core/themes/colors.dart';

class SecondSplashPage extends StatefulWidget {
  const SecondSplashPage({Key? key}) : super(key: key);

  @override
  _SecondSplashPageState createState() => _SecondSplashPageState();
}

class _SecondSplashPageState extends State<SecondSplashPage> {
  late double _progressValue;

  @override
  void initState() {
    super.initState();
    _progressValue = 0.0;
    _updateProgress();
  }

  void navigationPage() {
  //  Get.offAndToNamed(SettingsStore.to.isHasSettings.value ? AuthStore.to.isLogged.value ? Routers.home : Routers.social_auth : Routers.languagepicker);
   Get.offAndToNamed(Routers.languagepicker);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: Get.width * 0.7,
            ),
            const SizedBox(height: 20,),
            SizedBox(
              width: Get.width * 0.7,
              child: LinearProgressIndicator(   
                backgroundColor: darkBlueColor,
                valueColor: AlwaysStoppedAnimation<Color>(darkPurpleColor),
                value: _progressValue,

              ),
            ),
          ],
        ),
      ),  
    );
  }

  void _updateProgress() {
    const oneSec = Duration(milliseconds: 100);
    Timer.periodic(oneSec, (Timer t) {
      setState(() {
        _progressValue += 0.01;
        // we "finish" downloading here
        if (_progressValue.toStringAsFixed(1) == '1.0') {
          t.cancel();
          navigationPage();
        }
      });
    });
  }
}
