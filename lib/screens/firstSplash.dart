import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

import 'bottomMain.dart';

class Splash1 extends StatefulWidget {
  const Splash1({super.key});

  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/22222.jpg',
              width: size.width,
              // height: size.height,
              fit: BoxFit.fitWidth,
            ),
            Positioned(
              right: 10,
              top: 10,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.segment_rounded,
                  size: 28,
                ),
              ),
            ),
            Positioned(
              top: size.height / 55,
              left: size.width / 20,
              child: const Text(
                'Stop & \ntake a deep\nbreath',
                style: TextStyle(
                  fontFamily: 'serif',
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                  fontSize: 48,
                ),
              ),
            ),
            Positioned(
              bottom: 32,
              left: 10,
              child: Builder(
                builder: (context) {
                  final GlobalKey<SlideActionState> key = GlobalKey();
                  return SizedBox(
                    width: size.width - 20,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SlideAction(
                        key: key,
                        // sliderRotate: false,
                        text: '>>  Log in  >>',
                        textColor: Colors.black,
                        textStyle: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'serif',
                        ),
                        animationDuration: const Duration(milliseconds: 500),
                        onSubmit: () {
                          key.currentState!.submitted;
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const BottomMain();
                              },
                            ),
                          );
                          return null;
                        },
                        innerColor: Colors.black,
                        outerColor: Colors.white,
                      ),
                    ),
                  );
                },
              ),
            ),
            Positioned(
              left: 40,
              bottom: 0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Dont have an account?',
                    style: TextStyle(color: Colors.white60, fontSize: 12),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
