// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';
// import 'package:vyld/main.dart';

// class CameraScreen extends StatefulWidget {
//   final CameraDescription camera;

//   const CameraScreen({Key? key, required this.camera}) : super(key: key);

//   @override
//   _CameraScreenState createState() => _CameraScreenState();
// }

// class _CameraScreenState extends State<CameraScreen> {
//   late CameraController _cameracontroller;

//   @override
//   void initState() {
//     super.initState();
//     _cameracontroller = CameraController(
//       cameras![0], // Use the first camera
//       ResolutionPreset.medium,
//     );
//     _cameracontroller.initialize().then((_) {
//       if (!mounted) {
//         return;
//       }
//       setState(() {});
//     });
//   }

//   @override
//   void dispose() {
//     _cameracontroller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (!_cameracontroller.value.isInitialized) {
//       return Container();
//     }
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Camera'),
//       ),
//       body: AspectRatio(
//           aspectRatio: _cameracontroller.value.aspectRatio,
//           child:
//               CameraPreview(_cameracontroller)), // Display the camera preview
//       floatingActionButton: FloatingActionButton(
//         child: const Icon(Icons.camera),
//         onPressed: () async {
//           try {
//             final image =
//                 await _cameracontroller.takePicture(); // Capture image
//             // Do something with the captured image
//           } catch (e) {
//             print(e);
//           }
//         },
//       ),
//     );
//   }
// }
