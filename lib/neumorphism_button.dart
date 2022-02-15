import 'package:flutter/material.dart';

class NeumorphismButton extends StatefulWidget {

  final Widget child;
  final VoidCallback onPressed;
  const NeumorphismButton({Key? key, required this.child,
  required this.onPressed}) : super(key: key);

  @override
  _NeumorphismButtonState createState() => _NeumorphismButtonState();
}

class _NeumorphismButtonState extends State<NeumorphismButton> {

  bool _pressing = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) => setState(() => _pressing = true),
      onTapUp: (value) => setState(() => _pressing = false),
      onTapCancel: () => setState(() => _pressing = false),
      onTap: widget.onPressed,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(24),
        margin: const EdgeInsets.all(24),
        child: widget.child,
        decoration: BoxDecoration(
          color: _pressing ? Colors.grey[350] : Colors.grey[300],
          borderRadius: BorderRadius.circular(24),
          boxShadow: _pressing ? [

            BoxShadow(
                color: Colors.grey[500]!,
                blurRadius: 6,
                offset: const Offset(1, 1),
                spreadRadius: 1
            ),
            const BoxShadow(
                color: Colors.white,
                blurRadius: 6,
                offset: Offset(-1, -1),
                spreadRadius: 1
            ),

          ] :
          [
            BoxShadow(
              color: Colors.grey[500]!,
              blurRadius: 24,
              offset: const Offset(4, 4),
              spreadRadius: 1
            ),
            const BoxShadow(
              color: Colors.white,
              blurRadius: 24,
              offset: Offset(-4, -4),
              spreadRadius: 1
            ),
          ]
        ),
      ),
    );
  }
}
