import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

// ignore: prefer_collection_literals
final Set<JavascriptChannel> jsChannels = [
  JavascriptChannel(
      name: 'Print',
      onMessageReceived: (JavascriptMessage message) {
        print(message.message);
      }),
].toSet();

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
      primarySwatch: Colors.blue
  ),
  home: myhomepage(),
));


class myhomepage extends StatefulWidget{
  @override
  _myhomepagestate createState() => _myhomepagestate();
}


class _myhomepagestate extends State<myhomepage> {
  @override
  Widget build(BuildContext context){
    return WebviewScaffold(
      // appBar:AppBar( ),

      url: "http://aquizapp.esy.es/",
      clearCache: true,
    );

  }



}