import 'package:flutter/material.dart';

class AnimatedswitcherWidget extends StatefulWidget {
  @override
  _AnimatedswitcherWidgetState createState() => _AnimatedswitcherWidgetState();
}

class _AnimatedswitcherWidgetState extends State<AnimatedswitcherWidget> {
  bool _showImage = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AnimatedSwitcher Örneği'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedSwitcher(
                duration: Duration(milliseconds: 500),
                child: _showImage
                    ? Image.network(
                        'https://picsum.photos/250?image=9',
                        key: ValueKey(1),
                      )
                    : Text(
                        'Flutter',
                        style: TextStyle(fontSize: 32),
                        key: ValueKey(2),
                      ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('Değiştir'),
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
