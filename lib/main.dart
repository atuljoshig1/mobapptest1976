/*import 'package:flutter/material.dart';
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
}*/


// new modified code 
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // removes the debug banner
      home: const WebViewScreen(),
    );
  }
}

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({super.key});

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse("https://ticketstoindia.co.uk/welcomeAPP.aspx"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea( // ensures it doesn't overlap system status bar
        child: WebViewWidget(controller: _controller),
      ),
    );
  }
}