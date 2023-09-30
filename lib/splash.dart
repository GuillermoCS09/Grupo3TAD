import 'package:flutter/material.dart';
import 'login.dart';

class MyAppSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePageSplash(),
    );
  }
}
class MyHomePageSplash extends StatefulWidget
{
  @override
  _MyHomePageState createState()
  {
    return _MyHomePageState();
  }
}
class _MyHomePageState extends State<MyHomePageSplash>
{
  @override
  void initState()
  { super.initState();
  _navigatetohome();
  }
  _navigatetohome() async
  {  await Future.delayed(Duration(milliseconds: 2000), () {});
  Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context) => LoginApp()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6C181B),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 294,
              height: 400,
              child: Image.asset('images/unmsm_escudo.png') ,
            ),
          ],
        ),
      ),
    );
  }
}