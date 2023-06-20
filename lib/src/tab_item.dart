import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  final ImageIcon? iconData;
  final double? iconSize;
  final bool isActive;
  final Color? activeColor;
  final Color? inactiveColor;
  final Widget? child;

  const TabItem({
    Key? key,
    required this.isActive,
    this.iconData,
    this.iconSize = 17,
    this.activeColor = Colors.deepPurpleAccent,
    this.inactiveColor = Colors.black,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => child ?? _buildDefaultTab();

  Widget _buildDefaultTab() {
    return ImageIcon(
      iconData!.image,
      color: isActive ? activeColor : inactiveColor,
      size: iconSize,
    );
  }
}
