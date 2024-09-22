
import 'package:flutter/material.dart';
import 'package:hasab/Services/permissionService.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionHandler implements PermissionService {
  @override
  Future<PermissionStatus> requestCameraPermission() async {
    return await Permission.camera.request();
  }

  @override
  Future<PermissionStatus> requestPhotosPermission() async {
    return await Permission.photos.request();
  }

  @override
  Future<bool> handleCameraPermission(BuildContext context) async {
    PermissionStatus cameraPermissionStatus = await requestCameraPermission();

    if (cameraPermissionStatus != PermissionStatus.granted) {
      print('Permission to camera was not granted!');
      await showDialog(
        context: context,
        builder: (_context) => AppAlertDialog(
          onConfirm: () => openAppSettings(),
          title: 'Camera Permission',
          subtitle: 'Camera permission should Be granted to use this feature, would you like to go to app settings to give camera permission?',
        ),
      );
      return false;
    }
    return true;
  }

  @override
  Future<bool> handlePhotosPermission(BuildContext context) async {
    PermissionStatus photosPermissionStatus = await requestPhotosPermission();

    if (photosPermissionStatus != PermissionStatus.granted) {
      print('Permission to photos not granted!');
      await showDialog(
        context: context,
        builder: (_context) => AppAlertDialog(
          onConfirm: () => openAppSettings(),
          title: 'Photos Permission',
          subtitle: 'Photos permission should Be granted to use this feature, would you like to go to app settings to give photos permission?',
        ),
      );
      return false;
    }
    return true;
  }

  @override
  Future<bool> handleInternetPermission(BuildContext context) {
    // TODO: implement handleInternetPermission
    throw UnimplementedError();
  }

  @override
  Future requestInternetPermission() {
    // TODO: implement requestInternetPermission
    throw UnimplementedError();
  }
}

class AppAlertDialog extends StatelessWidget{

  final Function onConfirm;
  final String title;
  final String subtitle;

  const AppAlertDialog({
    required this.onConfirm,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(subtitle),
      actions: [
        ElevatedButton(
          onPressed: () => onConfirm(),
          child: const Text('Confirm'),
        ),
        ElevatedButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
      ],
    );
  }

}