import 'package:flutter/material.dart';
import 'package:portfolio_raffashe/src/widgets/header.dart';

class PortfolioRaffashe extends StatelessWidget {
  const PortfolioRaffashe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage('assets/images/background.jpg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.white.withOpacity(0.2),
                        BlendMode.dstATop,
                      ),
                    ),
                  ),
                ),
                const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 60, top: 60),
                      child: Header(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
