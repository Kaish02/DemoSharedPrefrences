import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplassScreen(),
    );
  }
}
class SplassScreen extends StatefulWidget {
  const SplassScreen({super.key});

  @override
  State<SplassScreen> createState() => _SplassScreenState();
}

class _SplassScreenState extends State<SplassScreen> {
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5),() {

    },);

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/aurth_Splash.png',height: 180,color: Colors.blue,),
            SizedBox(height: 30,),
            Text("Demo Shared_Preferences",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,),),
            SizedBox(height: 120,),
            CircularProgressIndicator(color: Colors.blue,)

          ],
        ),
      ),

    )
    );
  }
}

