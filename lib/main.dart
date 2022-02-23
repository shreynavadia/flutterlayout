import 'package:flutter/material.dart';
import 'package:flutter_views/stack.dart';
import 'package:flutter_views/threeview.dart';
import 'package:flutter_views/tabview.dart';
import 'package:flutter_views/webview.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> views = [
    'GridView, CardView, and ImageView',
    'TabView',
    'WebView',
    'Stack'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/TabView': (context) => TabView(),
        '/MyThreeViews': (context) => MyThreeViews(),
        '/webView': (context) => webView(),
        '/stack': (context) => stack(),
      },
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xff00acc1),
        shadowColor: const Color(0xff80deea),
        scaffoldBackgroundColor: const Color(0xfffafafa),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Flutter Views')),
          backgroundColor: const Color(0xff00acc1),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 50.0),

          ///ListView Implementation
          child: ListView.builder(
            itemCount: views.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    minimumSize:
                    MaterialStateProperty.all(const Size(60.0, 100.0)),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Theme.of(context).primaryColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    elevation: MaterialStateProperty.all(10.0),
                    shadowColor: MaterialStateProperty.all<Color>(
                        Theme.of(context).shadowColor),
                  ),
                  onPressed: () {
                    switch (views[index]) {
                      case "TabView":
                        Navigator.pushNamed(context, '/TabView');
                        break;
                      case 'GridView, CardView, and ImageView':
                        Navigator.pushNamed(context, '/MyThreeViews');
                        break;
                      case 'WebView':
                        Navigator.pushNamed(context, '/webView');
                        break;
                      case 'Stack':
                        Navigator.pushNamed(context, '/stack');
                        break;
                    }
                  },
                  child: Text(
                    views[index],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
