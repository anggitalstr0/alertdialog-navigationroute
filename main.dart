import 'package:flutter/material.dart';

void main() {
  runApp( const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get child => null;

 void _loginalert(){
   AlertDialog alertDialog =  AlertDialog(
     content:  SizedBox(
       height: 200.0,
       child:  Center(
         child: Text("Hello Selamat Datang"),
       ),
     ),
      actions: [
      TextButton (
         child: Text("OK"),
         onPressed: (){  
         Navigator.push (
              context,
              MaterialPageRoute(
                builder:(context) => _PageLogin()));
         }
         )
     ],
   );

   showDialog(context: context, builder: (BuildContext context){
     return alertDialog;
   } );
 }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
            
              decoration: InputDecoration(
                hintText: "Username",
                labelText: "Username",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                )
              )
            ),
           
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                labelText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                )
          )),
          SizedBox(
                  width: 200,
                  height: 45,
            child :TextButton(
            style: TextButton.styleFrom(
               backgroundColor: const Color.fromARGB(255, 8, 89, 171)
             ),
            onPressed: (){
              _loginalert();
            },
            child: const Text(
              "Login",
              style: TextStyle(
                color: Color(0xffffffff)),
            ),
            ),)]
          
        ),
        
      )
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class _PageLogin extends StatelessWidget {
  const _PageLogin ({Key? key}) : super(key: key);
  @override
 Widget build (BuildContext context){
   return Scaffold(
     appBar: AppBar(
       title: const Text ("Page Login"),
     ),
     body: Center(
       child: TextButton(
         child: const Text ('KEMBALI'),
         onPressed: (){
           Navigator.pop(context, 
           );
         },
       ),
     ),
   );
 }
    
  
}