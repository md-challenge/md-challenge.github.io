import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import '../formats/system_image.dart';

GlobalKey _imageKey = GlobalKey();

extension GlobalKeyExtension on GlobalKey {
  Rect? get globalPaintBounds {
    final renderObject = currentContext?.findRenderObject();
    final translation = renderObject?.getTransformTo(null).getTranslation();
    if (translation != null && renderObject?.paintBounds != null) {
      final offset = Offset(translation.x, translation.y);
      return renderObject!.paintBounds.shift(offset);
    } else {
      return null;
    }
  }
}

class ImageStack extends StatelessWidget {
  final String systemURL;
  final int divX;
  final int divY;
  final bool overlayBool;
  final Color divColor;
  final LayerLink _layerLink = LayerLink();

  ImageStack(
      {super.key,
      required this.systemURL,
      required this.divX,
      required this.divY,
      required this.overlayBool,
      required this.divColor});

  @override
  Widget build(BuildContext context) {
    OverlayEntry makeOverlay(bool overlayBool, BuildContext context, int divX,
        int divY, Color divColor) {
      // RenderBox renderBox = context.findRenderObject() as RenderBox;
      // var size = renderBox.size;

      Size imageSize = getImageSize();
      // print(imageSize);

      return OverlayEntry(
          builder: (context) => Positioned(
              width: imageSize.width,
              height: imageSize.height,
              child: CompositedTransformFollower(
                  link: _layerLink,
                  showWhenUnlinked: false,
                  child: divPaint(divX, divY, divColor, context))));
    }

    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      OverlayEntry? overlayEntry;

      overlayEntry = makeOverlay(overlayBool, context, divX, divY, divColor);
      if (overlayBool == true) {
        Overlay.of(context).insert(overlayEntry);
      }
    });

    return CompositedTransformTarget(
      link: _layerLink,
      child: Container(
          height: SysImageData.imgHeight,
          key: _imageKey,
          padding: const EdgeInsets.all(SysImageData.padding),
          decoration: SysImageData.boxDecoration,
          child: Image.network(systemURL)),
    );
  }
}

Size getImageSize() {
  Size imageSize = const Size(0.0, 0.0);
  if (_imageKey.globalPaintBounds != null) {
    double? left = _imageKey.globalPaintBounds?.left;
    double? right = _imageKey.globalPaintBounds?.right;
    double? top = _imageKey.globalPaintBounds?.top;
    double? bottom = _imageKey.globalPaintBounds?.bottom;
    if (left != null && right != null && top != null && bottom != null) {
      imageSize = Size(right - left, bottom - top);
      // print(imageSize);
    }
  }
  return imageSize;
}

Widget divPaint(int divX, int divY, Color divColor, BuildContext context) {
  Widget paint = CustomPaint(
    // size: getImageSize(),
    painter: DivPainter(divX, divY, divColor),
  );
  return paint;
}

class DivPainter extends CustomPainter {
  int divX;
  int divY;
  Color divColor;
  DivPainter(this.divX, this.divY, this.divColor);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = divColor
      ..strokeWidth = SysImageData.divWidth;
    for (var xi in List.generate(divX - 1, (index) => index)) {
      canvas.drawLine(Offset(size.width / divX * (xi + 1), 0),
          Offset(size.width / divX * (xi + 1), size.height), paint);
    }
    for (var yi in List.generate(divY - 1, (index) => index)) {
      canvas.drawLine(Offset(0, size.height / divY * (yi + 1)),
          Offset(size.width, size.height / divY * (yi + 1)), paint);
    }
  }

  @override
  bool shouldRepaint(DivPainter oldDelegate) => false;
}

// Size _getImageSize0() {
//   Size sizeImage = Size.zero;
//   final RenderBox renderBoxImage =
//       _imageKey.currentContext?.findRenderObject() as RenderBox;
//   sizeImage = renderBoxImage.size;
//   print(sizeImage);
//   return sizeImage;
// }