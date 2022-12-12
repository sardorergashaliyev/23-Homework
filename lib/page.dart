import 'package:flutter/material.dart';
import 'package:homework/control.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (a) => const MyPages(),
        ),
      ),
    );

    super.initState();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 240,
          width: 170,
          child: Image.asset('assets/1.png'),
        ),
      ),
    );
  }
}
