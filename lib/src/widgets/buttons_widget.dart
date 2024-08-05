import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Corrigido para 'flutter_svg'
import 'package:url_launcher/url_launcher.dart'; // Importar url_launcher

class IconButtonWidget extends StatelessWidget {
  final String iconPath;
  final String url; // Adicione um campo para a URL
  final VoidCallback onPressed;

  const IconButtonWidget({
    super.key,
    required this.iconPath,
    required this.url, // Adicione a URL como parâmetro
    required this.onPressed,
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
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: 30,
          height: 30,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(),
          child: InkWell(
            onTap: () {
              _launchUrl(); // Chame _launchUrl em vez de onPressed
            },
            child: SvgPicture.asset(
              iconPath,
              width: 30,
              height: 30,
            ),
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
