import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import 'icon_card.dart';

class ImageAndIcons extends StatefulWidget {
  ImageAndIcons({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;
  int selectedImage = 0;

  static List<String> images = [
    "assets/images/tabouret-light.png",
    "assets/images/tabouret.png",
    "assets/images/tabouret-dark.png",
  ];
  @override
  State<StatefulWidget> createState() {
    return _ImageAndIconsState();
  }
}

class _ImageAndIconsState extends State<ImageAndIcons> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: widget.size.height * 0.8,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    const Spacer(),
                    IconCard(
                        icon: "assets/colors/5f564d.png",
                        press: () {
                          setState(() {
                            widget.selectedImage = 0;
                          });
                        }),
                    IconCard(
                        icon: "assets/colors/e1dcd2.png",
                        press: () {
                          setState(() {
                            widget.selectedImage = 1;
                          });
                        }),
                    IconCard(
                        icon: "assets/colors/655549.png",
                        press: () {
                          setState(() {
                            widget.selectedImage = 2;
                          });
                        }),
                    // const IconCard(icon: "assets/icons/icon_2.svg"),
                    // const IconCard(icon: "assets/icons/icon_3.svg"),
                    // const IconCard(icon: "assets/icons/icon_4.svg"),
                  ],
                ),
              ),
            ),
            Container(
              height: widget.size.height * 0.8,
              width: widget.size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(0.29),
                  ),
                ],
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  scale: 0.5,
                  // image: AssetImage("assets/images/img.png"),
                  image: AssetImage(ImageAndIcons.images[widget.selectedImage]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
