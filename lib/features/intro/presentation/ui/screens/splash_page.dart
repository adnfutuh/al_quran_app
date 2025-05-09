import 'dart:async';

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/core.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 6), () {
      context.go('/navbar/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallet.cyan,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/icon_logo.png'),
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Ngaji Yuk',
              style: TextStyles.textLgSemiBold
                  .copyWith(letterSpacing: 5, color: Pallet.white),
            ),
            const SizedBox(height: 150),
            TextLiquidFill(
              text: 'Loading ...',
              waveColor: Pallet.white,
              boxBackgroundColor: Pallet.cyan,
              textStyle: TextStyles.textLgSemiBold
                  .copyWith(color: Pallet.white, fontSize: 40),
              waveDuration: const Duration(seconds: 5),
              loadDuration: const Duration(seconds: 6),
              textAlign: TextAlign.center,
              boxHeight: 50,
              boxWidth: 200,
            ),
            Container(
              margin: const EdgeInsets.only(top: 250),
              child: DefaultTextStyle(
                style: TextStyles.textLgSemiBold
                    .copyWith(letterSpacing: 4, color: Pallet.white),
                child: AnimatedTextKit(
                  pause: const Duration(milliseconds: 2500),
                  totalRepeatCount: 1,
                  animatedTexts: [
                    TyperAnimatedText('Created By'),
                    TyperAnimatedText('Rizki Adnan Futuh'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
