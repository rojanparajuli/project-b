import 'package:chatapp/screen/home/home_screen.dart';
import 'package:chatapp/screen/login/sign-up/login.dart';
import 'package:chatapp/screen/notification/notification.dart';
import 'package:chatapp/screen/profile/profile_screen.dart';
import 'package:chatapp/screen/search/search.dart';
import 'package:chatapp/screen/settings/settings.dart';
import 'package:flutter/material.dart';



class Homepage extends StatelessWidget {
  final GlobalKey<ScaffoldState> homeKey = GlobalKey();
   Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: SafeArea(
        child: Scaffold(
          key: homeKey,
          drawer: Drawer(
            child: ListView(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const Profile()));
                  },
                  child: const UserAccountsDrawerHeader(
                    accountName: Text('Prayash Rimal'),
                    accountEmail: Text('Home'),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage('assets/prayash.jpg'),
                      
                    ),
                  ),
                ),
                ListTile(
                  title: const Text('Settings'),
                  leading: const Icon(Icons.settings),
                  onTap: (){
                  
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> SettingPage()));
                  },
                ),
                ListTile(
                  title: const Text('Profile'),
                  leading: const Icon(Icons.person),
                  onTap: () {
                    
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const Profile()));
                  },
                ),
                ListTile(
                  title: const Text('Logout'),
                  leading: const Icon(Icons.logout),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginPage()));
                  },
                ),
                const ListTile(
                  title: Text('Report'),
                  leading: Icon(Icons.report),
                ),
                 const ListTile(
                  title: Text('About'),
                  leading: Icon(Icons.book),
                ),
              ],
            ),
          ),
          bottomNavigationBar: const TabBar(
            labelColor: Colors.blue,
            indicatorColor: Colors.red,
            
            tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.favorite),
            ),
            Tab(
              icon: Icon(Icons.person_add),
            ),
            Tab(
              icon: Icon(Icons.notifications),
            ),
            Tab(
              icon: Icon(Icons.search),
            )
          
          ]),
          body: TabBarView(

            
            children: [
            const HomePage(),
            Container(),
            Container(),
            const NotificationPage(),
            const MyHomePage(),
          ])
        ),
      ),
    );
  }
}
