import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_placeholder/store/counter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  final counterStore = Counter();

  var name = TextEditingController();

  // void _incrementCounter() {
  //   setState(() {
  //
  //     _counter++;
  //   });

  @override
  void initState() {
    counterStore.getAllUsers();
    super.initState();
  }

  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Observer(
              builder: (_) {
                return counterStore.showIndicator
                    ? Center(child: CircularProgressIndicator())
                    : Observer(
                        builder: (_) {
                          return ListView.builder(
                              shrinkWrap: true,
                              itemCount: counterStore.userList.length,
                              itemBuilder: (context, index) {
                                counterStore.userList[0].name;
                                return Text(
                                    "${counterStore.userList[index].name}");
                              });
                        },
                      );
              },
            ),
            SizedBox(
              height: 200,
            ),
            TextFormField(
              controller: name,
              decoration: const InputDecoration(
                icon: const Icon(Icons.person),
                hintText: 'Enter your name',
                labelText: 'Name',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {
                counterStore.updateName(name: name.text);
                name.clear();
              },
              child: Text("Update Name"),
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
