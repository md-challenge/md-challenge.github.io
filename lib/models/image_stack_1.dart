import 'package:flutter/material.dart';
import '../formats/system_image.dart';

class ImageStack extends StatelessWidget {
  final String systemURL;
  final int divX;
  final int divY;
  final bool overlayBool;
  final Color divColor;

  const ImageStack(
      {super.key,
      required this.systemURL,
      required this.divX,
      required this.divY,
      required this.overlayBool,
      required this.divColor});

  @override
  Widget build(BuildContext context) {
    return Container(
        key: _imageKey,
        padding: const EdgeInsets.all(SysImageData.padding),
        decoration: SysImageData.boxDecoration,
        child: Image.network(systemURL));
  }
}

GlobalKey _imageKey = GlobalKey();

Size _getImageSize() {
  Size sizeImage = Size.zero;
  final RenderBox renderBoxImage =
      _imageKey.currentContext?.findRenderObject() as RenderBox;
  sizeImage = renderBoxImage.size;
  print(sizeImage);
  return sizeImage;
}

void makeOverlay(bool overlayBool, BuildContext context, int divX, int divY,
    Color divColor) {
  OverlayEntry overlayPaint = OverlayEntry(builder: (context) {
    return divPaint(divX, divY, divColor, context);
  });
  if (overlayBool == true) {
    Overlay.of(context).insert(overlayPaint);
  } else {
    if (overlayPaint != null) {
      overlayPaint.remove();
    }
  }
}

Widget divPaint(int divX, int divY, Color divColor, BuildContext context) {
  Widget paint = CustomPaint(
    size: _getImageSize(),
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
