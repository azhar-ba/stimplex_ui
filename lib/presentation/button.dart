import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stimplex_ui/presentation/values.dart';

class StimplexButton extends StatefulWidget {
  final void Function() onPressed;
  final String text;

  const StimplexButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  State<StimplexButton> createState() => _StimplexButtonState();
}

class _StimplexButtonState extends State<StimplexButton> {
  final double verticalOffset = 4;
  Offset _offset = Offset(0, 0);
  BoxBorder _border = Border.all();

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (d) {
      },
      child: GestureDetector(
        onTap: widget.onPressed,
        onTapDown: (d) {
          _onHover();
        },
        onTapUp: (d) {
          _onDown();
          // _onUp();
        },
        child: AnimatedContainer(
          transform: Matrix4.translationValues(_offset.dx, _offset.dy, 0),
          padding: const EdgeInsets.symmetric(
            horizontal: Values.PADDING_LARGE,
            vertical: Values.PADDING_MEDIUM,
          ),
          decoration: BoxDecoration(
            color: Colors.black,
            border: _border,
          ),
          duration: const Duration(milliseconds: 100),
          child: Text(
            widget.text,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  _onDown() {
    _offset = Offset(0, -verticalOffset);
    _border = Border(
      bottom: BorderSide(width: verticalOffset, color: Colors.deepOrange),
    );
    setState(() {});
  }

  _onHover() {
    _offset = Offset(0, -verticalOffset*0.5);
    _border = Border(
      bottom: BorderSide(width: verticalOffset*0.5, color: Colors.deepOrange),
    );
    setState(() {});
  }

  _onUp() {
    _offset = Offset(0, 0);
    _border = Border();
    setState(() {});
  }
}
