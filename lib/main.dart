import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
        color: Colors.grey
        ),
        child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundColor: Colors.red,
              radius: 70,
              child: Icon(Icons.play_arrow_sharp, size: 79),),
            const SizedBox(height: 30,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text('Go To Unity',style: TextStyle(color: Colors.black,fontSize: 35),
                ),
            ),
            const SizedBox(height: 30,),
            ElevatedButton(
                onPressed: () async {
                  LaunchApp.openApp(
                      androidPackageName:'com.DefaultCompany.Myproject1',
                      openStore: true
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all(Colors.white),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal:
                        MediaQuery
                            .of(context)
                            .size
                            .width / 4),),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                        side: BorderSide(
                            color:Colors.black)),
                  ),
                  elevation: MaterialStateProperty.all(3),
                ),
                child: Text(
                  'Check Your Email',style: TextStyle(color: Colors.black,fontSize: 20),
                )),
          ],
        )),
      ),
    );
  }
}
