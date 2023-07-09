import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../blocs/app_config/app_config_bloc.dart';
import 'widgets.dart';

class AppWebviewWidget extends StatefulWidget {
  final String link;
  final JavaScriptMode javaScriptMode;
  const AppWebviewWidget(
      {super.key,
      required this.link,
      this.javaScriptMode = JavaScriptMode.unrestricted});

  @override
  State<AppWebviewWidget> createState() => _AppWebviewWidgetState();
}

class _AppWebviewWidgetState extends State<AppWebviewWidget> {
  WebViewController? controller;
  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..clearLocalStorage()
      ..setJavaScriptMode(widget.javaScriptMode)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            // if (request.url.startsWith('https://www.youtube.com/')) {
            //   return NavigationDecision.prevent;
            // }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.link));
  }

  @override
  Widget build(BuildContext context) {
    final appConfig =
        context.watch<AppConfigBloc>().state.config!.app!.outstanding;
    if (controller == null) {
      return LoadingWidget(color: appConfig);
    }
    return WebViewWidget(
      key: Key(widget.link),
      controller: controller!,
    );
  }
}
