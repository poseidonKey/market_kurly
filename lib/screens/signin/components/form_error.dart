import 'package:flutter/material.dart';

class FormError extends StatelessWidget {
  final List<String>? errors;
  const FormError({
    Key? key,
    this.errors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: List.generate(
        errors?.length ?? 0, // errors가 null이 아니면 length를  null이면 0
        (index) => Text(
          " * ${errors?[index]}",
          style: const TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}
