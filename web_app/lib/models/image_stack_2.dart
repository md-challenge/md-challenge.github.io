import 'package:flutter/material.dart';
import '../formats/system_image.dart';

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

class ImageStack extends StatefulWidget {
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
  State<ImageStack> createState() => _ImageStackState();
}

class _ImageStackState extends State<ImageStack> {
  List<Widget> stackList = [];
  GlobalKey imageKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
// Use FUTURE !!

    Widget procDivisions(Size imageSize) {
      return SizedBox(
          width: imageSize.width,
          height: imageSize.height,
          child: divPaint(widget.divX, widget.divY, widget.divColor, context));
    }

    Widget imageData() {
      return Container(
          height: MediaQuery.of(context).size.height * 0.8 * 0.6,
          padding: const EdgeInsets.all(SysImageData.padding),
          decoration: SysImageData.boxDecoration,
          key: imageKey,
          child: Image.network(widget.systemURL));
    }

    Future<bool> executeAfterBuild() async {
      await Future.delayed(Duration.zero);
      // this code will get executed after the build method
      // because of the way async functions are scheduled
      return true;
    }

    Widget overlayAdd() {
      return FutureBuilder<bool>(
        future: executeAfterBuild(),
        builder: (
          BuildContext context,
          AsyncSnapshot<bool> snapshot,
        ) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Container();
          } else if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Container();
            } else if (snapshot.hasData) {
              if (snapshot.data == true && widget.overlayBool == true) {
                Size imageSize = _getImageSize0(imageKey);
                return procDivisions(imageSize);
              } else {
                return Container();
              }
            } else {
              return Container();
            }
          } else {
            return Container();
          }
        },
      );
    }

    return Stack(
      alignment: Alignment.center,
      children: [imageData(), overlayAdd()],
    );
  }
}

Size getImageSize(imageKey) {
  Size imageSize = const Size(0.0, 0.0);
  if (imageKey.globalPaintBounds != null) {
    double? left = imageKey.globalPaintBounds?.left;
    double? right = imageKey.globalPaintBounds?.right;
    double? top = imageKey.globalPaintBounds?.top;
    double? bottom = imageKey.globalPaintBounds?.bottom;
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
  bool shouldRepaint(DivPainter oldDelegate) => true;
}

Size _getImageSize0(imageKey) {
  Size sizeImage = Size.zero;
  final RenderBox renderBoxImage =
      imageKey.currentContext?.findRenderObject() as RenderBox;
  sizeImage = renderBoxImage.size;
  // print(sizeImage);
  return sizeImage;
}
