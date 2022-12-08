import 'package:flutter/material.dart';

class button extends StatelessWidget {
  final VoidCallback konversi;
  button({
    Key? key,
    required this.konversi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      color: Colors.blue,
      child: ElevatedButton(
        onPressed: konversi,
        child: Text(
          "Konversi Suhu",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
