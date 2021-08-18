import 'package:flutter/material.dart';
import 'package:hng_task1/hng_link.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'HNGi8 x I4G INTERNSHIP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController controller = new TextEditingController();

  String result = "";

  @override
  Widget build(BuildContext context) {
    print('My name is Olanrewaju Olakunle.');
// The above print-out to the debug console is my full name.

    return new Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.network(
                  'https://camo.githubusercontent.com/b56c4898f22fb90c0f950c0e1db7c7b3df9fc943bb13bbc460ab2b89b8d44235/68747470733a2f2f686e672e746563682f696d672f6272616e642d6c6f676f2e706e67',
                  height: 120.0,
                  width: MediaQuery.of(context).size.width * 0.7,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            HngLink(),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: TextField(
                  decoration: new InputDecoration(
                      focusColor: Colors.white,
                      hoverColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Color(0xFF46A0AE),
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: 'Type in Anything that\'s on your Mind Here'),
                  onSubmitted: (String cdf) {
                    // This is called to display the input on the screen.
                    setState(() {
                      result = result + '\n' + cdf;
                    });
                    controller.text = "";
                  },
                  controller: controller,
                ),
              ),
            ),
            new Text(
              result,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
