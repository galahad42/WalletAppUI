// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class CardBalance extends StatelessWidget {
  final String balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final String cardName;
  final cardNameColor;
  final color;

  const CardBalance({
    Key? key,
    required this.color,
    required this.cardName,
    required this.cardNameColor,
    required this.balance,
    required this.cardNumber,
    required this.expiryMonth,
    required this.expiryYear,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        height: 240,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: color,
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              //SECTION - visa

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    cardName,
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: cardNameColor,
                    ),
                  ),
                ],
              ),

              //SECTION - balance

              Row(
                children: const [
                  Text(
                    'Balance',
                    style: TextStyle(
                        color: Colors.white, fontSize: 18, letterSpacing: 2),
                  ),
                ],
              ),

              const SizedBox(
                height: 13,
              ),

              //SECTION - value

              Row(
                children: [
                  Text(
                    '\$' + balance.toString(),
                    style: const TextStyle(
                        color: Colors.white, fontSize: 30, letterSpacing: 2),
                  ),
                ],
              ),

              const SizedBox(
                height: 40,
              ),

              //SECTION - expiry date
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '**** ' + cardNumber.toString(),
                    style: const TextStyle(
                        color: Color.fromARGB(255, 205, 200, 200),
                        fontSize: 20,
                        letterSpacing: 2),
                  ),
                  Text(
                    expiryMonth.toString() + '/' + expiryYear.toString(),
                    style: const TextStyle(
                        color: Color.fromARGB(255, 205, 200, 200),
                        fontSize: 20,
                        letterSpacing: 2),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
