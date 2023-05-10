import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){

  runApp(const Myapp());

}

class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      darkTheme: ThemeData(primarySwatch: Colors.amber),
      color: Colors.cyan,
      debugShowCheckedModeBanner: false,
      home:  HomeActivity()
    );
  }

}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  // ignore: non_constant_identifier_names
  MySnackBar(message, context){
    ScaffoldMessenger.of(context).showSnackBar(

      SnackBar(content: Text(message))
    );

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("TAOHIDUL ISLAM"),
        titleSpacing: 10,
        //centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.amber,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        actions: [
          IconButton(onPressed: (){MySnackBar("I am message", context);}, icon: Icon(Icons.comment)),
          IconButton(onPressed: (){MySnackBar("I am Email", context);}, icon: Icon(Icons.email)),
          IconButton(onPressed: (){MySnackBar("I am Settings", context);}, icon: Icon(Icons.settings)),
          IconButton(onPressed: (){MySnackBar("I am Search", context);}, icon: Icon(Icons.search))
        ],
      ),
      floatingActionButton: FloatingActionButton(

        elevation: 0,
        backgroundColor: Colors.amber,
        onPressed: (){

          MySnackBar("Show floating action", context);
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.contact_page_outlined),label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],
        onTap: (int index){
          if(index==0){
            MySnackBar("I am Home buttom menu", context);
          }
          if(index==1){
            MySnackBar("I am Contact buttom menu", context);
          }
          if(index==2){
            MySnackBar("I am Profile buttom menu", context);
          }
        },

      ),
      body: Text("An article is any member of a class of dedicated words that are used with noun phrases to mark the identifiability of the referents of the noun phrases."),

    );
  }

}


