import 'package:flutter/material.dart';


class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _textController = TextEditingController();
  final _textController1 = TextEditingController();
  final VoidCallback? onPressed = enabled ? () {} : null;
  String name = "";
  String response = "";

  static get enabled => true;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Task#15'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 80,
              width: 400,
              child: const Center(
                child: Text("Fisrt Flutter App",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Container(
              height: 80,
              width: 400,
              child:  TextField(
                controller: _textController,
                decoration: InputDecoration(
                  hintText: "API endpoint",
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                      onPressed: (){
                        //
                        _textController.clear();
                      },
                      icon: const Icon(Icons.clear)),
                ),
                style: TextStyle(fontSize: 25),
              ),
            ),
            Container(
              height: 80,
              width: 400,
              child: TextField(
                controller: _textController1,
                decoration: InputDecoration(
                  hintText: "Your name",
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                      onPressed: (){
                        //
                        _textController1.clear();
                      },
                      icon: const Icon(Icons.clear)),
                ),
                style: TextStyle(fontSize: 25),
              ),
            ),
            Container(
              height: 80,
              width: 200,
              child: FilledButton(
                onPressed: (){
                  setState(() {
                    name = _textController1.text;
                    response = 'Hello $name!';
                  });
                },
                child: const Text(
                  "Submit",
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              ),
            ),
            Container(
              height: 80,
              width: 500,
              child: Center(
                child: Text(response,
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
