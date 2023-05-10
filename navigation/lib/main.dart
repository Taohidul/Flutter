import 'package:flutter/material.dart';

main(){
  runApp(const Myapp());
}
class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
   return const MaterialApp(home: HomeActivity(),);
  }
}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Navigation")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Contact("Contact"),));},
                child: const Text("Go to Contact")),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Email("Email"),));},
                child: const Text("Go to Email")),
             Card(
              elevation: 30,
              color: Colors.cyan,
              shadowColor: Colors.cyan,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              margin: const EdgeInsets.all(20),
              child: const SizedBox(
                height: 200,
                width: 200,
                child: Center(child: Text("Taohid"),),
              ),

            )
          ],

        )
    );
  }
}

// ignore: must_be_immutable
class Contact extends StatelessWidget{

  String msg;
   Contact(
      this.msg,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text(msg)),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeActivity(),));},
                child: const Text("Go to Home")),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Email("email"),));},
                child: const Text("Go to Email"))
          ],
        )

    );
  }
}
// ignore: must_be_immutable
class Email extends StatelessWidget{
  String msg;
   Email(
        this.msg,
       {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text(msg)),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>const HomeActivity(),));},
                child: const Text("Go to Home")),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Contact("contact"),));},
                child: const Text("Go to Contact"))
          ],
        )
    );
  }
}