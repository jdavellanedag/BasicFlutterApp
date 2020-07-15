import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _general = new TextStyle(fontSize: 25);
  int _count = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Cantidad de taps:',
              style: _general,
            ),
            Text(
              '$_count',
              style: _general,
            ),
          ],
        ),
      ),
      floatingActionButton: _buildButtons(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _buildButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: _remove,
        ),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: _reset,
        ),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _add,
        ),
      ],
    );
  }

  void _add() {
    setState(() => _count++);
  }

  void _remove() {
    setState(() => _count--);
  }

  void _reset() {
    setState(() => _count = 0);
  }
}
