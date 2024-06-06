import 'package:flutter/material.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';

class CustomSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final double thumbSize;
  final Color activeColor;
  final Color inactiveColor;
  final Color thumbColor;

  const CustomSwitch({
    super.key,
    required this.value,
    required this.onChanged,
    this.thumbSize = 20.0,
    this.activeColor = Colors.green,
    this.inactiveColor = Colors.grey,
    this.thumbColor = Colors.white,
  });

  @override
  CustomSwitchState createState() => CustomSwitchState();
}

class CustomSwitchState extends State<CustomSwitch>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> thumbAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    thumbAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.linear));

    if (widget.value) {
      _controller.value = 1.0;
    }
  }

  @override
  void didUpdateWidget(CustomSwitch oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.value) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTap() {
    if (widget.value) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
    widget.onChanged(!widget.value);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Container(
            width: context.width(52),
            height: widget.thumbSize,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(context.width(12)),
              color: _controller.value > 0.5
                  ? widget.activeColor
                  : widget.inactiveColor,
            ),
            child: Padding(
              padding: EdgeInsets.all(context.width(1)),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.lerp(Alignment.centerLeft,
                        Alignment.centerRight, _controller.value)!,
                    child: Container(
                      width: widget.thumbSize,
                      height: widget.thumbSize,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: widget.thumbColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
