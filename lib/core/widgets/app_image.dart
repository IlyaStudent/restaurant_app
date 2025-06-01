import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:restaurant_app/core/styles/app_colors.dart';

class AppImage extends StatefulWidget {
  final String image;
  final BoxFit? fit;
  final Alignment alignment;
  final Color? color;
  final String? placeholder;
  final double? width;
  final double? height;

  final int? cacheWidth;

  const AppImage._(
    this.image, {
    this.fit,
    this.alignment = Alignment.center,
    super.key,
    this.color,
    this.placeholder,
    this.width,
    this.height,
    this.cacheWidth,
  });

  const factory AppImage.asset(
    String image, {
    Key? key,
    BoxFit? fit,
    Alignment alignment,
    Color? color,
    String? placeholder,
    double? width,
    double? height,
  }) = _AppImage$Asset;

  const factory AppImage.network(
    String image, {
    Key? key,
    BoxFit? fit,
    Alignment alignment,
    Color? color,
    String? placeholder,
    double? width,
    double? height,
    int? cacheWidth,
  }) = _AppImage$Network;

  @override
  State<AppImage> createState() => _AppImageState();
}

class _AppImageState extends State<AppImage> {
  late String image;
  late BoxFit? fit;
  late Alignment alignment;
  late Color? color;
  late String? placeholder;
  late double? width;
  late double? height;

  late int? cacheWidth;

  @override
  void initState() {
    super.initState();
    _init();
  }

  @override
  void didUpdateWidget(covariant AppImage oldWidget) {
    if (oldWidget.image != widget.image ||
        oldWidget.fit != widget.fit ||
        oldWidget.alignment != widget.alignment ||
        oldWidget.color != widget.color ||
        oldWidget.placeholder != widget.placeholder ||
        oldWidget.width != widget.width ||
        oldWidget.height != widget.height ||
        oldWidget.cacheWidth != widget.cacheWidth) {
      _init();
      super.didUpdateWidget(oldWidget);
    }
  }

  void _init() {
    image = widget.image;
    fit = widget.fit;
    alignment = widget.alignment;
    color = widget.color;
    placeholder = widget.placeholder;
    width = widget.width;
    height = widget.height;
    cacheWidth = widget.cacheWidth;
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

final class _AppImage$Asset extends AppImage {
  const _AppImage$Asset(
    super.image, {
    super.key,
    super.fit,
    super.alignment,
    super.color,
    super.placeholder,
    super.height,
    super.width,
  }) : super._();

  @override
  _AppImageState$Asset createState() => _AppImageState$Asset();
}

class _AppImageState$Asset extends _AppImageState {
  @override
  Widget build(BuildContext context) {
    if (image.endsWith('svg')) {
      return SizedBox(
        height: height,
        width: width,
        child: SvgPicture.asset(
          image,
          colorFilter: ColorFilter.mode(
            color ?? AppColors.black,
            BlendMode.srcIn,
          ),
        ),
      );
    }

    return SizedBox(
      height: height,
      width: width,
      child: Image.asset(image, fit: fit, alignment: alignment, color: color),
    );
  }
}

final class _AppImage$Network extends AppImage {
  const _AppImage$Network(
    super.image, {
    super.key,
    super.fit,
    super.alignment,
    super.color,
    super.placeholder = 'assets/images/temp/empty_image.png',
    super.height,
    super.width,
    super.cacheWidth,
  }) : super._();

  @override
  _AppImageState$Network createState() => _AppImageState$Network();
}

class _AppImageState$Network extends _AppImageState {
  @override
  Widget build(BuildContext context) {
    if (image.endsWith('svg')) {
      return SizedBox(
        height: height,
        width: width,
        child: SvgPicture.network(image),
      );
    }

    return ExtendedImage.network(
      image,
      height: height,
      width: width,
      color: color,
      fit: fit,
      alignment: alignment,
      cache: true,
      clearMemoryCacheIfFailed: true,
      enableLoadState: false,
      printError: false,
      cacheWidth: cacheWidth ?? 300,
    );
  }
}
