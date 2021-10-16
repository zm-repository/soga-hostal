import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidgets extends StatefulWidget {
  const TextFieldWidgets({
    Key? key,
    required this.text,
    this.keyboardType = TextInputType.text,
    this.oscureText = false,
    this.icon = false,
  }) : super(key: key);

  final String text;
  final TextInputType keyboardType;
  final bool oscureText;
  final bool icon;

  @override
  _TextFieldWidgetsState createState() => _TextFieldWidgetsState();
}

class _TextFieldWidgetsState extends State<TextFieldWidgets> {
  late bool _oscuredText;

  @override
  void initState() {
    _oscuredText = widget.oscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
          labelText: widget.text,
          suffix: widget.icon && _oscuredText
              ? CupertinoButton(
                  padding: EdgeInsets.zero,
                  child: Icon(Icons.remove_red_eye),
                  onPressed: () {
                    _oscuredText = !_oscuredText;
                    setState(() {});
                  })
              : widget.icon && _oscuredText == false
                  ? CupertinoButton(
                      padding: EdgeInsets.zero,
                      child: Icon(Icons.visibility_off),
                      onPressed: () {
                        _oscuredText = !_oscuredText;
                        setState(() {});
                      })
                  : null),
      obscureText: _oscuredText,
    );
  }
}
