import 'package:flutter/material.dart';

import '../../Core/Constants/padding_const.dart';

class CTextField extends StatelessWidget {
  const CTextField({
    super.key,
    FocusNode? focusNode,
    TextEditingController? controller,
    String? hintText,
    this.obsecure,
  })  : _focusNode = focusNode,
        _controller = controller,
        _hintText = hintText;

  final FocusNode? _focusNode;
  final String? _hintText;
  final TextEditingController? _controller;
  final bool? obsecure;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: CPadding.paddingBottomMedium,
      child: TextField(
        focusNode: _focusNode,
        controller: _controller,
        obscureText: obsecure ?? false,
        decoration: InputDecoration(
          hintText: _hintText,
        ),
      ),
    );
  }
}
