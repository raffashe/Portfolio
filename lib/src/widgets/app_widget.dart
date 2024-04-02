import 'package:flutter/material.dart';
import 'package:portfolio_raffashe/src/widgets/buttons_menu_widget.dart';
import 'package:portfolio_raffashe/src/widgets/buttons_widget.dart';
import 'package:portfolio_raffashe/src/widgets/console_widget.dart';
import 'package:portfolio_raffashe/src/widgets/header_widget.dart';
import 'package:portfolio_raffashe/src/widgets/image_profile_widget.dart';
import 'package:portfolio_raffashe/src/widgets/pronome_widget.dart';
import 'package:portfolio_raffashe/src/widgets/run_terminal_widget.dart';

class PortfolioRaffashe extends StatelessWidget {
  const PortfolioRaffashe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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

            /// Cabeçalho do website -----------------------
            const Positioned(left: 106, top: 76, child: Header()),

            ///Menu icons ----------------------------------
            Positioned(
                left: 100,
                top: 343,
                child: MenuButtonWidget(
                  iconPath: 'assets/icon/about.svg',
                  title: 'sobre',
                  onPressed: () {},
                )),

            Positioned(
                left: 100,
                top: 443,
                child: MenuButtonWidget(
                  iconPath: 'assets/icon/project.svg',
                  title: 'stack',
                  onPressed: () {},
                )),

            Positioned(
                left: 100,
                top: 543,
                child: MenuButtonWidget(
                  iconPath: 'assets/icon/mobile.svg',
                  title: 'projetos',
                  onPressed: () {},
                )),
            Positioned(
                left: 100,
                top: 643,
                child: MenuButtonWidget(
                  iconPath: 'assets/icon/contact.svg',
                  title: 'contato',
                  onPressed: () {},
                )),

            ///Menu icons ----------------------------------
            /// Botões de social media ---------------------
            Positioned(
                left: 1598,
                top: 400,
                child: IconButtonWidget(
                  iconPath: 'assets/icon/instagram.svg',
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
            const Positioned(left: 225, top: 343, child: RunTerminal()),
            const Positioned(left: 225, top: 439, child: ConsoleWidget()),
            const Positioned(left: 1185, top: 272, child: RaffasheWidget()),
            const Positioned(left: 1299, top: 852, child: PronomeWidget())
          ],
        ),
      ),
    );
  }
}
