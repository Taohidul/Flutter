
import 'package:flutter/material.dart';

import 'fragment/AccountFragment.dart';
import 'fragment/AlarmFragment.dart';
import 'fragment/BalanceFragment.dart';
import 'fragment/ContactFragment.dart';
import 'fragment/EmailFragment.dart';
import 'fragment/PersonFragment.dart';
import 'fragment/SearchFragment.dart';


main(){

  runApp(const Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});


  @override
  Widget build(BuildContext context) {

    return const MaterialApp(home: HomeActivity());
  }
}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Tab Bar"),
            bottom: const TabBar(
              isScrollable: true,
              tabs: [
                Tab(icon: Icon(Icons.home_filled),text: 'Home',),
                Tab(icon: Icon(Icons.contact_page),text: 'Contact',),
                Tab(icon: Icon(Icons.email_outlined),text: 'Email',),
                Tab(icon: Icon(Icons.person),text: 'Person',),
                Tab(icon: Icon(Icons.search),text: 'Search',),
                Tab(icon: Icon(Icons.access_alarm_outlined),text: 'Alarm',),
                Tab(icon: Icon(Icons.account_circle),text: 'Account',),
                Tab(icon: Icon(Icons.account_balance),text: 'Balance',)
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              AccountFragment(),
              ContactFragment(),
              EmailFragment(),
              PersonFragment(),
              SearchFragment(),
              AlarmFragment(),
              AccountFragment(),
              BalanceFragment()
            ],
          ),

        )
    );
  }
}


