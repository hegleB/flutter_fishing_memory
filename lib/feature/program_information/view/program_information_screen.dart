import 'package:fishingmemory/core/resource/resource.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ProgramInformationScreen extends StatefulWidget {
  final String webUrl;

  const ProgramInformationScreen({
    super.key,
    this.webUrl = "https://www.google.com",
  });

  @override
  State<ProgramInformationScreen> createState() => _ProgramInformationScreenState();
}

class _ProgramInformationScreenState extends State<ProgramInformationScreen> {
  WebViewController? webViewController;
  @override
  void initState() {
    super.initState();
    webViewController = WebViewController()
      ..loadRequest(Uri.parse(widget.webUrl))
      ..setJavaScriptMode(JavaScriptMode.unrestricted);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close, color: AppColors.black),
          iconSize: 25,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: WebViewWidget(controller: webViewController!)
    );
  }
}