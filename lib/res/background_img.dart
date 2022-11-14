import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';

class BackgroundImage extends StatefulWidget {
  BackgroundImage({super.key});

  @override
  State<BackgroundImage> createState() => _BackgroundImageState();
}

class _BackgroundImageState extends State<BackgroundImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/back.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
