import 'dart:io';
import 'package:image/image.dart';

void main() {
  Image image = decodeImage(new File('card-front.png').readAsBytesSync());

  Image rotatedImage = copyRotate(image, -90);
  new File('card-front-rotated-90.png').writeAsBytesSync(encodePng(rotatedImage));

  drawString(rotatedImage, arial_24, 0, 0, 'This is a test', color: Color.fromRgb(128, 128, 128));
  new File('card-front-rotated-90-text.png').writeAsBytesSync(encodePng(rotatedImage));

  Image rotatedImageBack = copyRotate(rotatedImage, 90);
  new File('card-front-rotated-back.png').writeAsBytesSync(encodePng(rotatedImageBack));

} // main
