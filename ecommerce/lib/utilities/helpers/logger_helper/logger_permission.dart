import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class LoggerPermission {
  LoggerPermission._();
  static LoggerPermission? _instance;
  static LoggerPermission get instance => _instance ??= LoggerPermission._();

  final ImagePicker _picker = ImagePicker();
  Future<String?> isCheckPermissionCamera() async {
    if (await Permission.camera.request().isGranted) {
      final photo = await _picker.pickImage(source: ImageSource.camera);
      return photo?.path;
    }
    return null;
  }

  Future<String?> isCheckPermissionLibrary() async {
    if (await Permission.storage.request().isGranted) {
      final photo = await _picker.pickImage(source: ImageSource.gallery);
      return photo?.path;
    }
    return null;
  }
}
