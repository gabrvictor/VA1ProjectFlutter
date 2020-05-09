import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController controller = TextEditingController();
  String value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prova VA1'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40),
            Text(value == null ? 'Sem texto' : '$value'),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite Algo',
                ),
              ),
            ),
            RaisedButton(
              child: Text('Alterar'),
              onPressed: () {
                setState(() {
                  value = controller.text;
                  controller.text = '';
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
