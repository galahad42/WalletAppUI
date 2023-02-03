// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../utils/card_balance.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:drop_shadow/drop_shadow.dart';
import '../utils/buttons.dart';
import '../utils/options.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //pagecontroller
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Column(
          children: [
            //SECTION - appbar

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text(
                        'My',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 27.0,
                        ),
                      ),
                      Text(
                        ' Cards',
                        style: TextStyle(fontSize: 27.0),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(179, 204, 215, 224),
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Icon(
                        Icons.add,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 30,
            ),

            //SECTION - listview cards
            Container(
              height: 230,
              child: PageView(
                controller: _controller,
                children: const [
                  CardBalance(
                    color: Color(0xFF645CBB),
                    cardName: 'VISA',
                    cardNameColor: Color.fromARGB(255, 141, 133, 240),
                    balance: '5250.20',
                    cardNumber: 3456,
                    expiryMonth: 10,
                    expiryYear: 24,
                  ),
                  CardBalance(
                    color: Color.fromARGB(255, 28, 138, 138),
                    cardName: 'Maestro',
                    cardNameColor: Color.fromARGB(255, 30, 114, 114),
                    balance: '5250.20',
                    cardNumber: 3456,
                    expiryMonth: 10,
                    expiryYear: 24,
                  ),
                  CardBalance(
                    color: Color.fromARGB(255, 48, 144, 186),
                    cardName: 'MasterCard',
                    cardNameColor: Color.fromARGB(255, 105, 163, 199),
                    balance: '5250.20',
                    cardNumber: 3456,
                    expiryMonth: 10,
                    expiryYear: 24,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade700),
            ),

            SizedBox(
              height: 25,
            ),

            //SECTION - row of 3 icons -> send + receive + bill
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //SECTION - send button

                  MyButtons(
                      image: Image.asset('assets/icons/send(1).png'),
                      option: 'Send'),

                  //SECTION - pay button

                  MyButtons(
                      image: Image.asset('assets/icons/pay-per-click.png'),
                      option: 'Pay'),

                  //SECTION - bills button

                  MyButtons(
                      image: Image.asset('assets/icons/bills.png'),
                      option: 'Bills'),
                ],
              ),
            ),

            // SizedBox(
            //   height: 5,
            // ),

            //SECTION - column -> stats + transactions

            MyOptions(
                icon: Image.asset('assets/icons/pie-chart.png'),
                heading: 'Statistics',
                description: 'Payments and income'),
            MyOptions(
                icon: Image.asset('assets/icons/invoice.png'),
                heading: 'Transactions',
                description: 'Transaction history'),

            //SECTION - BottomBar
            // Container(
            //   width: double.infinity,
            //   height: 60,
            //   margin: EdgeInsets.only(top: 20.0),
            //   color: Colors.white,
            //   child: Padding(
            //     padding: const EdgeInsets.all(10.0),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceAround,
            //       children: [
            //         Image.asset('assets/bottombar/home.png'),
            //         Image.asset(
            //           'assets/bottombar/sends.png',
            //         ),
            //         Image.asset('assets/bottombar/settings.png'),
            //       ],
            //     ),
            //   ),
            // )
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.grey.shade100,
        items: <Widget>[
          Container(
            height: 40,
            child: Image.asset(
              'assets/bottombar/home.png',
            ),
          ),
          Container(
            height: 40,
            child: Image.asset(
              'assets/bottombar/send.png',
            ),
          ),
          Container(
            height: 40,
            child: Image.asset(
              'assets/bottombar/settings.png',
            ),
          ),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
    );
  }
}
