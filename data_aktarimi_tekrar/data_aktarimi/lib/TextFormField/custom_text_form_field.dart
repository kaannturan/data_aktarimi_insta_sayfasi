import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {super.key,
      required this.hintYazisi,
      this.textController,
      this.validator});

  final String hintYazisi;
  final TextEditingController? textController;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        controller: textController,
        validator: validator,
        style: const TextStyle(color: Colors.white, fontSize: 16),
        decoration: InputDecoration(
            hintText: hintYazisi,
            hintStyle: const TextStyle(color: Colors.white, fontSize: 14),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(16))),
      ),
    );
  }
}
