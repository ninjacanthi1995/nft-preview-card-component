import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NFT card preview',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Outfit',
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isHoveringEquilibrium = false;
  bool isHoveringAuthor = false;
  bool isHoveringImg = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF0d192b),
        body: Padding(
          padding: EdgeInsets.all(30),
          child: Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 400, maxHeight: 700),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Scaffold(
                  backgroundColor: const Color(0xFF14253d),
                  body: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: InkWell(
                                onTap: () {},
                                onHover: (val) {
                                  setState(() {
                                    isHoveringImg = val;
                                  });
                                },
                                child: Stack(
                                  children: <Widget>[
                                    Image.asset('assets/image-equilibrium.jpg'),
                                    Center(
                                      child: isHoveringImg ? SvgPicture.asset('assets/icon-view.svg') : null,
                                    ),
                                    Opacity(
                                      opacity: isHoveringImg ? 0.3 : 0,
                                      child: const Scaffold(
                                        backgroundColor: Color(0xff00fff7),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: InkWell(
                            onTap: () {},
                            onHover: (val) {
                              setState(() {
                                isHoveringEquilibrium = val;
                              });
                            },
                            child: Text(
                              'Equilibrium #3429',
                              style: TextStyle(
                                color: isHoveringEquilibrium
                                    ? const Color(0xff00fff7)
                                    : Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          'Our Equilibrium collection promotes balance and calm.',
                          style: TextStyle(
                              color: Color(0xff8bacda),
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        Container(
                          width: 1000,
                          padding: const EdgeInsets.only(bottom: 20),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  width: 1.0, color: Color(0xff2f415b)),
                            ),
                          ),
                          child: Wrap(
                            alignment: WrapAlignment.spaceBetween,
                            children: [
                              Wrap(
                                children: [
                                  SvgPicture.asset('assets/icon-ethereum.svg'),
                                  const SizedBox(width: 10),
                                  const Text(
                                    '0.041ETH',
                                    style: TextStyle(
                                        color: Color(0xff00fff7),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  )
                                ],
                              ),
                              Wrap(
                                children: [
                                  SvgPicture.asset('assets/icon-clock.svg'),
                                  const SizedBox(width: 10),
                                  const Text(
                                    '3 days left',
                                    style: TextStyle(
                                        color: Color(0xff8bacda),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Wrap(
                          alignment: WrapAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Image.asset(
                                'assets/image-avatar.png',
                                width: 40,
                              ),
                            ),
                            const SizedBox(width: 16),
                            const Text(
                              'Creation of ',
                              style: TextStyle(
                                  color: Color(0xff8bacda),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            InkWell(
                              onTap: () {},
                              onHover: (val) {
                                setState(() {
                                  isHoveringAuthor = val;
                                });
                              },
                              child: Text(
                                'Jules Wyvern',
                                style: TextStyle(
                                    color: isHoveringAuthor
                                        ? const Color(0xff00fff7)
                                        : Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}

/*class Card extends StatelessWidget {
  const Card({Key? key, }) : super(key: key);
  bool _isHoveringEquilibrium = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 400, maxHeight: 700),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Scaffold(
            backgroundColor: const Color(0xFF14253d),
            body: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('assets/image-equilibrium.jpg'),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                      child: Text(
                        'Equilibrium #3429',
                        style: TextStyle(
                          color: equilibriumColor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onHover: (val) {
                        setState(() {
                          equilibriumColor = Colors.red;
                        });
                      },
                    ),
                  ),
                  const Text(
                    'Our Equilibrium collection promotes balance and calm.',
                    style: TextStyle(
                        color: Color(0xff8bacda),
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    width: 1000,
                    padding: const EdgeInsets.only(bottom: 20),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom:
                            BorderSide(width: 1.0, color: Color(0xff2f415b)),
                      ),
                    ),
                    child: Wrap(
                      alignment: WrapAlignment.spaceBetween,
                      children: [
                        Wrap(
                          children: [
                            SvgPicture.asset('assets/icon-ethereum.svg'),
                            const SizedBox(width: 10),
                            const Text(
                              '0.041ETH',
                              style: TextStyle(
                                  color: Color(0xff00fff7),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            )
                          ],
                        ),
                        Wrap(
                          children: [
                            SvgPicture.asset('assets/icon-clock.svg'),
                            const SizedBox(width: 10),
                            const Text(
                              '3 days left',
                              style: TextStyle(
                                  color: Color(0xff8bacda),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Wrap(
                    alignment: WrapAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 1,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(50)),
                        child: Image.asset(
                          'assets/image-avatar.png',
                          width: 40,
                        ),
                      ),
                      const SizedBox(width: 16),
                      const Text(
                        'Creation of ',
                        style: TextStyle(
                            color: Color(0xff8bacda),
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      const Text(
                        'Jules Wyvern',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}*/
