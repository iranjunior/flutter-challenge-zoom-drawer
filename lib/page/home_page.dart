import 'package:flutter/material.dart';
import 'package:zoom_drawer/page/principal_page.dart';
import 'package:zoom_drawer/widgets/background.dart';


class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _value;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    // animação da pagina principal
    _value = Tween(begin: 1.0, end: 0.6).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    )..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Background(),
        Transform.scale(
          scale: _value.value,
          child: Transform.translate(
            offset: Offset(_controller.value * 200, 0),
            child: PrincipalPage(controller: _controller),
          ),
        )
      ],
    );
  }
}

