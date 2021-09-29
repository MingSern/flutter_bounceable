import 'package:flutter/material.dart';

class Bounceable extends StatefulWidget {
  /// Set it to `null` to disable `onTap`.
  final VoidCallback? onTap;
  final void Function(TapUpDetails)? onTapUp;
  final void Function(TapDownDetails)? onTapDown;
  final VoidCallback? onTapCancel;

  /// The reverse duration of the scaling animation when `onTapUp`.
  final Duration? duration;

  /// The duration of the scaling animation when `onTapDown`.
  final Duration? reverseDuration;

  /// The reverse curve of the scaling animation when `onTapUp`.
  final Curve curve;

  /// The curve of the scaling animation when `onTapDown`..
  final Curve? reverseCurve;

  /// The scale factor of the child widget. The valid range of `scaleFactor` is from `0.0` to `1.0`.
  final double scaleFactor;

  final Widget child;

  const Bounceable({
    Key? key,
    required this.onTap,
    required this.child,
    this.onTapUp,
    this.onTapDown,
    this.onTapCancel,
    this.duration = const Duration(milliseconds: 200),
    this.reverseDuration = const Duration(milliseconds: 200),
    this.curve = Curves.decelerate,
    this.reverseCurve = Curves.decelerate,
    this.scaleFactor = 0.8,
  })  : assert(
          scaleFactor >= 0.0 && scaleFactor <= 1.0,
          "The valid range of scaleFactor is from 0.0 to 1.0.",
        ),
        super(key: key);

  @override
  _BounceableState createState() => _BounceableState();
}

class _BounceableState extends State<Bounceable>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: widget.duration,
    reverseDuration: widget.reverseDuration,
    value: 1.0,
    upperBound: 1.0,
    lowerBound: widget.scaleFactor,
  );

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: widget.curve,
    reverseCurve: widget.reverseCurve,
  );

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    void onTap() {
      if (widget.onTap != null) widget.onTap!();

      _controller.reverse().then((_) {
        _controller.forward();
      });
    }

    void onTapUp(TapUpDetails details) {
      if (widget.onTapUp != null) widget.onTapUp!(details);
      _controller.forward();
    }

    void onTapDown(TapDownDetails details) {
      if (widget.onTapDown != null) widget.onTapDown!(details);
      _controller.reverse();
    }

    void onTapCancel() {
      if (widget.onTapCancel != null) widget.onTapCancel!();
      _controller.forward();
    }

    return GestureDetector(
      onTapCancel: widget.onTap != null ? onTapCancel : null,
      onTapDown: widget.onTap != null ? onTapDown : null,
      onTapUp: widget.onTap != null ? onTapUp : null,
      onTap: widget.onTap != null ? onTap : null,
      child: ScaleTransition(
        scale: _animation,
        child: widget.child,
      ),
    );
  }
}
