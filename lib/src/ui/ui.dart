import 'package:flutter/material.dart';
import 'package:portfolio_raffashe/src/widgets/buttons_widget.dart';
import 'package:portfolio_raffashe/src/widgets/console_widget.dart';
import 'package:portfolio_raffashe/src/widgets/header_widget.dart';
import 'package:portfolio_raffashe/src/widgets/image_profile_widget.dart';
import 'package:portfolio_raffashe/src/widgets/pronome_widget.dart';
import 'package:portfolio_raffashe/src/widgets/stack_widget.dart';

class PortfolioRaffashe extends StatelessWidget {
  const PortfolioRaffashe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [
            /// Cabeçalho do website -----------------------
            const Positioned(left: 106, top: 76, child: Header()),

            ///Menu icons ----------------------------------
            /// Botões de social media ---------------------
            Positioned(
                left: 1598,
                top: 400,
                child: IconButtonWidget(
                  iconPath: 'assets/icon/insta.svg',
                  onPressed: () {},
                )),
            Positioned(
                left: 1598,
                top: 500,
                child: IconButtonWidget(
                  iconPath: 'assets/icon/linkedin.svg',
                  onPressed: () {},
                )),
            Positioned(
                left: 1598,
                top: 600,
                child: IconButtonWidget(
                  iconPath: 'assets/icon/github.svg',
                  onPressed: () {},
                )),

            ///botões de social media ---------------
            const Positioned(left: 225, top: 439, child: ConsoleWidget()),
            // stack --------------------------------
            const Positioned(left: 1185, top: 272, child: RaffasheWidget()),
            const Positioned(left: 1299, top: 800, child: PronomeWidget())
          ],
        ),
      ),
    );
  }
}
