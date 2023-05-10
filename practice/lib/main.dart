import 'package:flutter/material.dart';

main(){
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      home:  HomeActivity());
  }
  
  
}

class HomeActivity extends StatelessWidget{
   HomeActivity({super.key});

  // ignore: non_constant_identifier_names
  MySnackBar(message, context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }
   // ignore: non_constant_identifier_names
   MyAlertDialog(context){
     return showDialog(
         context: context,
         builder: (BuildContext context){
           return  Expanded(
               child: AlertDialog(
                 title: const Text("Alert "),
                 content: const Text("Do you want to delete?"),
                 actions: [
                   ElevatedButton(
                       onPressed: (){
                         MySnackBar("Delete Successfully", context);
                         Navigator.of(context).pop();},
                       child: const Text("Yes")),
                   ElevatedButton(
                       onPressed: (){Navigator.of(context).pop();},
                       child: const Text("No"))
                 ],

               )
                   
           );
        }
     );
   }




  final ButtonStyle buttonStyle= ElevatedButton.styleFrom(
    padding: const EdgeInsets.all(20),
    backgroundColor: Colors.amber,
    foregroundColor: Colors.white,
      side: const BorderSide(color: Colors.black, width: 3),
      shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10))
      )
    );


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      appBar: AppBar (
        toolbarHeight: 60,
        titleSpacing: 20,
        //centerTitle: true,
        toolbarOpacity: 1,
        elevation: 4,
        title:const Text("Practice"),
      actions: [
        IconButton(onPressed: (){MySnackBar("Show message", context);}, icon: const Icon(Icons.comment)),
        IconButton(onPressed: (){MySnackBar("Show search", context);}, icon: const Icon(Icons.search)),
        IconButton(onPressed: (){MySnackBar("Show email", context);}, icon: const Icon(Icons.email)),
        IconButton(onPressed: (){MySnackBar("Show settings", context);}, icon: const Icon(Icons.settings)),

      ],
      ),
      floatingActionButton:  FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          MySnackBar("I am Floating Action button", context);
        },
        elevation: 1,
        child: const Icon(Icons.add),

      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.perm_contact_cal),label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
      ],
      onTap: (int index){
          if(index==0){
            MySnackBar('This is Home Button', context);
          }
          if(index==1){
            MySnackBar('This is Contact Button', context);
          }
          if(index==2){
            MySnackBar('This is Profile Button', context);
          }
      },
      ),
      drawer: Drawer(
        child: ListView(
          children:  [
             DrawerHeader(
                padding: const EdgeInsets.all(0) ,
                child:
                UserAccountsDrawerHeader(
                  decoration: const BoxDecoration(color: Colors.red),
                 accountName: const Text("TAOHIDUL ISLAM", style: TextStyle(color: Colors.white),),
                 accountEmail: const Text("taohidulislam57570@gmail.com", style: TextStyle(color: Colors.white),),
                  currentAccountPicture: Image.network("https://scontent.fdac41-1.fna.fbcdn.net/v/t1.6435-9/96025401_3450887268272569_432864628205158400_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHyo_aBMVELfNKZv2SWXyCbqCu3luOBdt6oK7eW44F23tvPS3FVGGnwICtryxQhht9d8SeZJdcbsbME7nqe0bOM&_nc_ohc=B7Soxcas3ucAX-dV_MT&_nc_ht=scontent.fdac41-1.fna&oh=00_AfDMOHIFz8hOh-ByC9i0cZnQUw1BW8oHKuqOuYkZxggFbQ&oe=645DB857"),
                  onDetailsPressed: (){
                    MySnackBar("This is my Profile Details", context);
                  },
            )),

            ListTile(
              leading: const Icon(Icons.home_filled),
              title: const Text("Home"),
              onTap: (){
                MySnackBar("I am Home", context);
              },),
            ListTile(
              leading: const Icon(Icons.contact_page_outlined),
              title: const Text("Contact"),
              onTap: (){
                MySnackBar("I am Contact", context);
              },),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              onTap: (){
                MySnackBar("I am Profile", context);
              },),
            ListTile(
              leading: const Icon(Icons.email_outlined),
              title: const Text("Email"),
              onTap: (){
                MySnackBar("I am Email", context);
              },),
            ListTile(
              leading: const Icon(Icons.photo),
              title: const Text("Photo"),
              onTap: (){
                MySnackBar("I am Photo", context);
              },),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children:  [
            DrawerHeader(
                padding: const EdgeInsets.all(0) ,
                child:
                UserAccountsDrawerHeader(
                  decoration: const BoxDecoration(color: Colors.red),
                  accountName: const Text("TAOHIDUL ISLAM", style: TextStyle(color: Colors.white),),
                  accountEmail: const Text("taohidulislam57570@gmail.com", style: TextStyle(color: Colors.white),),
                  currentAccountPicture: Image.network("https://scontent.fdac41-1.fna.fbcdn.net/v/t1.6435-9/96025401_3450887268272569_432864628205158400_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHyo_aBMVELfNKZv2SWXyCbqCu3luOBdt6oK7eW44F23tvPS3FVGGnwICtryxQhht9d8SeZJdcbsbME7nqe0bOM&_nc_ohc=B7Soxcas3ucAX-dV_MT&_nc_ht=scontent.fdac41-1.fna&oh=00_AfDMOHIFz8hOh-ByC9i0cZnQUw1BW8oHKuqOuYkZxggFbQ&oe=645DB857"),
                  onDetailsPressed: (){
                    MySnackBar("This is my Profile Details", context);
                  },
                )),

            ListTile(
              leading: const Icon(Icons.home_filled),
              title: const Text("Home"),
              onTap: (){
                MySnackBar("I am Home", context);
              },),
            ListTile(
              leading: const Icon(Icons.contact_page_outlined),
              title: const Text("Contact"),
              onTap: (){
                MySnackBar("I am Contact", context);
              },),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              onTap: (){
                MySnackBar("I am Profile", context);
              },),
            ListTile(
              leading: const Icon(Icons.email_outlined),
              title: const Text("Email"),
              onTap: (){
                MySnackBar("I am Email", context);
              },),
            ListTile(
              leading: const Icon(Icons.photo),
              title: const Text("Photo"),
              onTap: (){
                MySnackBar("I am Photo", context);
              },),
          ],
        ),
      ),
        body: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(onPressed: () {MySnackBar("I am Text Button", context);}, child: const Text("Text Button")),
          ElevatedButton(onPressed: () {MyAlertDialog(context);}, style: buttonStyle,child: const Text("Click me"),  ),
          OutlinedButton(onPressed: () {MySnackBar("I am OutLine Button", context);}, child: const Text("Outline Button")),
        ],
        )
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: [
      //     Container(
      //       height: 200,
      //       width: 100,
      //       //margin: const EdgeInsets.fromLTRB(10, 10, 50, 30),
      //       decoration: const BoxDecoration(color: Colors.amber, image: DecorationImage(image: NetworkImage("https://scontent.fdac41-1.fna.fbcdn.net/v/t1.6435-9/96025401_3450887268272569_432864628205158400_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHyo_aBMVELfNKZv2SWXyCbqCu3luOBdt6oK7eW44F23tvPS3FVGGnwICtryxQhht9d8SeZJdcbsbME7nqe0bOM&_nc_ohc=B7Soxcas3ucAX-dV_MT&_nc_ht=scontent.fdac41-1.fna&oh=00_AfDMOHIFz8hOh-ByC9i0cZnQUw1BW8oHKuqOuYkZxggFbQ&oe=645DB857"))),
      //       alignment: Alignment.topLeft,
      //       //padding: const EdgeInsets.fromLTRB(30,185, 10, 15),
      //       child: const Text("Practice is the act of rehearsing a behaviour repeatedly, to help learn and eventually master a skill.",style: TextStyle(color: Colors.red, fontSize: 10,fontStyle: FontStyle.italic),),
      //     ),
      //     Container(
      //       height: 100,
      //       width: 100,
      //       //margin: const EdgeInsets.fromLTRB(10, 10, 50, 30),
      //       decoration: const BoxDecoration(color: Colors.amber, image: DecorationImage(image: NetworkImage("https://scontent.fdac41-1.fna.fbcdn.net/v/t1.6435-9/96025401_3450887268272569_432864628205158400_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHyo_aBMVELfNKZv2SWXyCbqCu3luOBdt6oK7eW44F23tvPS3FVGGnwICtryxQhht9d8SeZJdcbsbME7nqe0bOM&_nc_ohc=B7Soxcas3ucAX-dV_MT&_nc_ht=scontent.fdac41-1.fna&oh=00_AfDMOHIFz8hOh-ByC9i0cZnQUw1BW8oHKuqOuYkZxggFbQ&oe=645DB857"))),
      //       alignment: Alignment.topLeft,
      //       //padding: const EdgeInsets.fromLTRB(30,185, 10, 15),
      //       child: const Text("Practice is the act of rehearsing a behaviour repeatedly, to help learn and eventually master a skill.",style: TextStyle(color: Colors.red, fontSize: 10,fontStyle: FontStyle.italic),),
      //     ),
      //     Container(
      //       height: 200,
      //       width: 100,
      //       //margin: const EdgeInsets.fromLTRB(10, 10, 50, 30),
      //       decoration: const BoxDecoration(color: Colors.amber, image: DecorationImage(image: NetworkImage("https://scontent.fdac41-1.fna.fbcdn.net/v/t1.6435-9/96025401_3450887268272569_432864628205158400_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHyo_aBMVELfNKZv2SWXyCbqCu3luOBdt6oK7eW44F23tvPS3FVGGnwICtryxQhht9d8SeZJdcbsbME7nqe0bOM&_nc_ohc=B7Soxcas3ucAX-dV_MT&_nc_ht=scontent.fdac41-1.fna&oh=00_AfDMOHIFz8hOh-ByC9i0cZnQUw1BW8oHKuqOuYkZxggFbQ&oe=645DB857"))),
      //       alignment: Alignment.topLeft,
      //       //padding: const EdgeInsets.fromLTRB(30,185, 10, 15),
      //       child: const Text("Practice is the act of rehearsing a behaviour repeatedly, to help learn and eventually master a skill.",style: TextStyle(color: Colors.red, fontSize: 10,fontStyle: FontStyle.italic),),
      //     ),
      //
      //   ],)


    );
  }
}
