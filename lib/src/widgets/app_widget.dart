import 'package:flutter/material.dart';
import 'package:portfolio_raffashe/src/widgets/buttons_widget.dart';
import 'package:portfolio_raffashe/src/widgets/header_widget.dart';

class PortfolioRaffashe extends StatelessWidget {
  const PortfolioRaffashe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 60, top: 60),
                    child: Header(),
                  ),
                  IconButtonWidget(
                    iconPath: 'assets/icon/about.svg',
                    title: 'sobre',
                    onPressed: () {},
                  ),
                  IconButtonWidget(
                    iconPath: 'assets/icon/project.svg',
                    title: 'stack',
                    onPressed: () {},
                  ),
                  IconButtonWidget(
                    iconPath: 'assets/icon/mobile.svg',
                    title: 'projetos',
                    onPressed: () {},
                  ),
                  IconButtonWidget(
                    iconPath: 'assets/icon/contact.svg',
                    title: 'contato',
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
