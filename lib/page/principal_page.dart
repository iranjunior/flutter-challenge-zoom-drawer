import 'package:flutter/material.dart';

class PrincipalPage extends StatelessWidget {
  const PrincipalPage({
    Key? key,
    required AnimationController controller,
  }) : _controller = controller, super(key: key);

  final AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            key: Key('drawer_button'),
            onPressed: () {
              // verifica se a animação completou para reverter
              if (_controller.status == AnimationStatus.completed) {
                _controller.reverse();
              } else {
                _controller.forward();
              }
            },
            icon: Icon(Icons.menu),
          ),
          title: Text('Title app'),
        ),
      ),
    );
  }
}
