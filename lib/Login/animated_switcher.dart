import 'package:flutter/material.dart';

class AnimatedswitcherWidget extends StatefulWidget {
  const AnimatedswitcherWidget({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _AnimatedswitcherWidgetState createState() => _AnimatedswitcherWidgetState();
}

class _AnimatedswitcherWidgetState extends State<AnimatedswitcherWidget> {
  bool _showImage = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AnimatedSwitcher Örneği'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                child: _showImage
                    ? Image.network('https://picsum.photos/250?image=9',
                        key: const ValueKey(1))
                    : const Text('Flutter',
                        style: TextStyle(fontSize: 32), key: ValueKey(2)),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                child: const Text('Değiştir'),
                onPressed: () {
                  setState(() {
                    _showImage = !_showImage;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
