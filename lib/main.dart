import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // removes the debug banner
      home: Scaffold(
        body: SafeArea( // ensures it doesn’t overlap system status bar
          child: WebView(
            initialUrl: "https://ticketstoindia.co.uk/welcomeAPP.aspx", // your site
            javascriptMode: JavascriptMode.unrestricted,
          ),
        ),
      ),
    );
  }
}
