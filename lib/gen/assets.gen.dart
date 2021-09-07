/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  String get back => 'assets/icons/back.svg';
  String get bell => 'assets/icons/bell.svg';
  String get bellOutline => 'assets/icons/bell_outline.svg';
  String get book => 'assets/icons/book.svg';
  String get chart => 'assets/icons/chart.svg';
  String get clipboard => 'assets/icons/clipboard.svg';
  String get clock => 'assets/icons/clock.svg';
  String get download => 'assets/icons/download.svg';
  String get helmet => 'assets/icons/helmet.svg';
  String get home => 'assets/icons/home.svg';
  String get notepad => 'assets/icons/notepad.svg';
  String get notification => 'assets/icons/notification.svg';
  String get options => 'assets/icons/options.svg';
  String get person => 'assets/icons/person.svg';
  String get pin => 'assets/icons/pin.svg';
  String get rebate => 'assets/icons/rebate.svg';
  String get rollback => 'assets/icons/rollback.svg';
  String get shopBag => 'assets/icons/shop_bag.svg';
  String get swap => 'assets/icons/swap.svg';
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  AssetGenImage get rectangle5 =>
      const AssetGenImage('assets/images/Rectangle 5.png');
  AssetGenImage get rectangle6 =>
      const AssetGenImage('assets/images/Rectangle 6.png');
  AssetGenImage get rectangle7 =>
      const AssetGenImage('assets/images/Rectangle 7.png');
  AssetGenImage get chat => const AssetGenImage('assets/images/chat.png');
  AssetGenImage get map => const AssetGenImage('assets/images/map.png');
  AssetGenImage get photo => const AssetGenImage('assets/images/photo.png');
  AssetGenImage get photo2 => const AssetGenImage('assets/images/photo2.png');
  AssetGenImage get strawberry =>
      const AssetGenImage('assets/images/strawberry.png');
  AssetGenImage get tracking =>
      const AssetGenImage('assets/images/tracking.png');
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}
