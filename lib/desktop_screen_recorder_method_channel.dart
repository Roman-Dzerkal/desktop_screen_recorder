import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'desktop_screen_recorder_platform_interface.dart';

/// An implementation of [DesktopScreenRecorderPlatform] that uses method channels.
class MethodChannelDesktopScreenRecorder extends DesktopScreenRecorderPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('desktop_screen_recorder');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
