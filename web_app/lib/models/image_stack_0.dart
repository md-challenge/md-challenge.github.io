import 'package:flutter/material.dart';
import '../formats/system_image.dart';

GlobalKey _imageKey = GlobalKey();

Size _getImageSize() {
  Size sizeImage = Size.zero;
  final RenderBox renderBoxImage =
      _imageKey.currentContext?.findRenderObject() as RenderBox;
  sizeImage = renderBoxImage.size;
  return sizeImage;
}

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
        child: Stack(
            alignment: Alignment.center,
            children: makeStack(
                systemURL, divX, divY, overlayBool, divColor, context)));
  }
}

List<Widget> makeStack(String url, int divX, int divY, bool overlayBool,
    Color divColor, BuildContext context) {
  if (overlayBool == false) {
    return [Image.network(url)];
  } else {
    return [Image.network(url), divPaint(divX, divY, divColor, context)];
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
