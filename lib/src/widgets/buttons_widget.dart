import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class IconButtonWidget extends StatelessWidget {
  final String iconPath;
  final String url;

  const IconButtonWidget({
    super.key,
    required this.iconPath,
    required this.url,
  });

  Future<void> _launchUrl() async {
    final Uri _url = Uri.parse(url);
    if (await canLaunchUrl(_url)) {
      await launchUrl(_url);
    } else {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _launchUrl();
      },
      child: SvgPicture.asset(
        iconPath,
        width: 30,
        height: 30,
      ),
    );
  }
}
