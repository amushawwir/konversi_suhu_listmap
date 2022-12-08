import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class input extends StatelessWidget {
  const input({
    Key? key,
    required this.Celcius,
  }) : super(key: key);

  final TextEditingController Celcius;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:
          const InputDecoration(hintText: "Masukkan Suhu dalam Celcius"),
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      controller: Celcius,
      keyboardType: TextInputType.number,
    );
  }
}
