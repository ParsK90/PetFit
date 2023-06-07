// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:webviewx/webviewx.dart';

class WebViewCC extends StatefulWidget {
  const WebViewCC({super.key});

  @override
  State<WebViewCC> createState() => _WebViewCCState();
}

class _WebViewCCState extends State<WebViewCC> {
  WebViewXController? webviewController;
  @override
  void initState() {
    //  webviewController =
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WebViewX(
        // initialContent: ("https://google.com"),
        initialContent: ("https://google.com"),
        initialSourceType: SourceType.urlBypass,
        onWebViewCreated: (controller) => webviewController = controller,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        javascriptMode: JavascriptMode.unrestricted,
        webSpecificParams: const WebSpecificParams(additionalSandboxOptions: [
          'allow-top-navigation',
          'allow-top-navigation-by-user-activation',
          'allow-downloads',
          'allow-popups',
          'allow-popups-to-escape-sandbox',
          'allow-presentation',
          'allow-same-origin',
        ]));
  }
}
