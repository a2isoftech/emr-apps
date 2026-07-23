import 'package:meta/meta.dart';

@internal
class DragType {
  DragType({this.isMove = false, this.index = -1, this.element});
  final bool isMove;
  final String? element;
  final int index;
}
