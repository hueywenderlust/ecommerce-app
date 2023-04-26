import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomIconButton extends StatelessWidget {
  final bool isActive;
  final Icon activeIcon;
  final Icon inactiveIcon;
  final void Function() onTap;
  const CustomIconButton({
    Key? key,
    required this.isActive,
    required this.activeIcon,
    required this.inactiveIcon,
    required this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      shape: const CircleBorder(),
      clipBehavior: Clip.hardEdge,
      color: Colors.black12,
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(12.0),
          child: isActive ? activeIcon : inactiveIcon,
        ),
      ),
    );
  }
}