import 'dart:io';
import 'package:image/image.dart';

void main() {
  Image image = decodeImage(new File('card-front.png').readAsBytesSync());

  Image rotatedImage = copyRotate(image, -90);
  new File('card-front-rotated-90.png').writeAsBytesSync(encodePng(rotatedImage));

  int color = Color.fromRgb(101, 101, 101);
  drawString(rotatedImage, arial_24, 20, 180, 'John Smith', color: color);
  drawString(rotatedImage, arial_24, 20, 210, 'Group ID: ABC123', color: color);
  drawString(rotatedImage, arial_24, 20, 240, 'Member ID: 123456789', color: color);
  drawString(rotatedImage, arial_24, 20, 270, 'Processor: NetCard Systems', color: color);
  drawString(rotatedImage, arial_24, 20, 300, 'Bin #: 008878', color: color);
  new File('card-front-rotated-90-text.png').writeAsBytesSync(encodePng(rotatedImage));

  Image rotatedImageBack = copyRotate(rotatedImage, 90);
  new File('card-front-rotated-back.png').writeAsBytesSync(encodePng(rotatedImageBack));

} // main
