import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PlatformTypeText extends StatelessWidget {
  const PlatformTypeText({super.key});

  @override
  Widget build(BuildContext context) {
    if(Platform.isAndroid) return const AndroidAppText();
    if(kIsWeb) return const WebAppText();
    if(Platform.isWindows) return WinAppText();
    return const Text('Undefined!', style: null);
  }
}

class WebAppText extends StatelessWidget {
  const WebAppText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Web!', style: null);
  }
}

class AndroidAppText extends StatelessWidget {
  const AndroidAppText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Android!', style: null);
  }
}
class WinAppText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Text("Test!", style: null);
  }
}