import 'package:flutter/material.dart';
import 'package:portfolio_raffashe/src/utils/text_style.dart';
import 'package:portfolio_raffashe/src/widgets/header_widget.dart';
import 'package:portfolio_raffashe/src/widgets/image_profile_widget.dart';
import '../widgets/console_widget.dart';

class PortfolioRaffashe extends StatelessWidget {
  const PortfolioRaffashe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isLargeScreen = constraints.maxWidth >= 1400;
          bool isMediumScreen =
              constraints.maxWidth >= 600 && constraints.maxWidth < 1400;

          return Container(
            color: Colors.black,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: isLargeScreen ? 100.0 : 20.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 60.0),
                      child: Header(
                        style: TextStyles.header(context),
                      ),
                    ),
                    if (isLargeScreen) ...[
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(child: ConsoleWidget()),
                          SizedBox(width: 50.0),
                          Expanded(child: RaffasheWidget()),
                        ],
                      ),
                    ] else if (isMediumScreen) ...[
                      const Wrap(
                        spacing: 20.0,
                        runSpacing: 20.0,
                        children: [
                          ConsoleWidget(),
                          RaffasheWidget(),
                        ],
                      ),
                    ] else ...[
                      const Column(
                        children: [
                          ConsoleWidget(),
                          SizedBox(height: 20.0),
                          RaffasheWidget(),
                        ],
                      ),
                    ],
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
