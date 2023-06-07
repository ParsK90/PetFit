import 'package:rive/rive.dart';

class RiveModel {
  final String src, artboard, stateMachineName;
  late SMIBool? status;
  final Function? ontap;

  RiveModel({
    required this.src,
    required this.artboard,
    required this.stateMachineName,
    this.status,
    this.ontap,
  });

  set setStatus(SMIBool state) {
    status = state;
  }
}
