import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0xffff889c),
    statusBarColor: Color(0xffff889c),
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarIconBrightness: Brightness.light
  ));
  return runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebView(
        initialUrl: "https://goveera-client.pages.dev/",
        javascriptMode: JavascriptMode.unrestricted
      ),
    );
  }
}
