import 'package:conteh_quezon/screens/rolldice.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const Rolldice());
}

class Rolldice extends StatelessWidget {
  const Rolldice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RolldiceScreen(),
    );
  }
}