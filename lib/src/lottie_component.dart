import 'dart:async';
import 'dart:ui' as ui;

import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieComponent extends PositionComponent {
  final LottieBuilder lottie;
  final LottieRenderer _renderer;

  LottieComponent({
    required this.lottie,
    BoxFit fit = BoxFit.contain,

    // position component arguments
    super.position,
    super.size,
    super.scale,
    double super.angle = 0.0,
    Anchor super.anchor = Anchor.topLeft,
    super.children,
    super.priority,
  }) : _renderer = LottieRenderer(
          lottie: lottie,
          fit: fit,
        );

  @override
  void render(ui.Canvas canvas) {}

  @override
  void update(double dt) {}
}

class LottieRenderer {
  final LottieBuilder lottie;
  final BoxFit fit;

  const LottieRenderer({
    required this.lottie,
    required this.fit,
  });
}

Future<void> loadLottie(
  FutureOr<int> file, {
  // FutureOr<Int> file,
  String? bla,
}) async {
  // directly from json
  final first = Lottie.asset('assets/LottieLogo1.json');

  // Load a Lottie file from a remote url
  final second = Lottie.network(
    'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json',
  );

  final third =
      // Load an animation and its images from a zip file
      Lottie.asset('assets/lottiefiles/angel.zip');

  // final loaded = await file;
}
