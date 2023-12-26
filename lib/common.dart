import 'package:flutter/material.dart';
import 'package:flutter_intro/flutter_intro.dart';

class Common extends StatefulWidget {
  final String from;

  const Common({
    super.key,
    required this.from,
  });

  @override
  State<Common> createState() => _CommonState();
}

class _CommonState extends State<Common> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 100), () {
      Intro.of(context).start();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('from: ${widget.from}'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      floatingActionButton: IntroStepBuilder(
        order: 1,
        text: 'I\'am from: ${widget.from}',
        builder: (context, key) {
          return FloatingActionButton(
            key: key,
            child: const Icon(
              Icons.play_arrow,
            ),
            onPressed: () {},
          );
        },
      ),
    );
  }
}
