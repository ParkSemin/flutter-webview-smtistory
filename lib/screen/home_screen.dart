import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController webViewController = WebViewController()
    ..loadRequest(Uri.parse('https://semin1127.tistory.com'))
    ..setJavaScriptMode(JavaScriptMode.unrestricted);

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text('Study Note'),
        centerTitle: true,

        leading: IconButton(
          onPressed: () {
            webViewController.goBack(); // 뒤로가기
          },
          icon: Icon(
            Icons.arrow_back,
          ),
        ),

        actions: [
          IconButton(
              onPressed: () {
                webViewController.loadRequest(Uri.parse('https://semin1127.tistory.com'));
              },
              icon: Icon(
                Icons.home,
              ),
          ),
        ],
      ),
      body: WebViewWidget(
        controller: webViewController,
      )
    );
  }
}