
import 'desktop_screen_recorder_platform_interface.dart';

class DesktopScreenRecorder {
  Future<String?> getPlatformVersion() {
    return DesktopScreenRecorderPlatform.instance.getPlatformVersion();
  }
}
