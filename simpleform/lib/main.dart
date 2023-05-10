import 'package:flutter/material.dart';

main(){

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
        darkTheme: ThemeData(primarySwatch: Colors.amber),
        debugShowCheckedModeBanner: false,
        home: const HomeActivity());
    }
  }



class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {

    ButtonStyle buttonStyle= ElevatedButton.styleFrom(
      minimumSize: const Size(double.infinity, 60),
    );

    return  Scaffold(
      appBar: AppBar(
        title: const Text("Simple Form"),),
      body: Column (
        mainAxisAlignment: MainAxisAlignment.start,
        children:   [
          const Padding(padding: EdgeInsets.all(10), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "First Name")),),
          const Padding(padding: EdgeInsets.all(10), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Last Name")),),
          const Padding(padding: EdgeInsets.all(10), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Email Address")),),
          Padding(padding: const EdgeInsets.all(10), child: ElevatedButton(onPressed: (){},style: buttonStyle, child: const Text("Submit",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,decoration: TextDecoration.none)),),)
        ],
      )
    );
  }
}
