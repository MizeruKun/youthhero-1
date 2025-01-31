import 'package:flutter/material.dart';
import 'package:youthhero/login.dart';
import 'package:youthhero/utils/uti_class.dart';

void main() => runApp(const MyHomePage());

List<Widget> mydrower(BuildContext context){

final List<Widget> menuItems = [
  const UserAccountsDrawerHeader(
          accountName: Text('Users name',
            style: TextStyle(
              color: Color.fromARGB(255, 240, 83, 83), fontWeight: FontWeight.bold, fontSize: 25,
              backgroundColor: Color.fromARGB(255, 67, 67, 67) // Change the text color here
            )),
          accountEmail: Text('emailhere@example.com',
            style: TextStyle(
              color: Color.fromARGB(255, 132, 233, 107), fontWeight: FontWeight.bold, fontSize: 15,
              backgroundColor: Color.fromARGB(255, 67, 67, 67) // Change the text color here // Change the text color here
            )),
          currentAccountPicture: CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile.png'),
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/cover.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
  ListTile(
    title: const Text('Home',
            style: TextStyle(
              color: Color.fromARGB(255, 251, 243, 242), fontWeight: FontWeight.bold // Change the text color here
            ),),
    leading: const Icon(Icons.home),
    onTap: () {

    },
  ),

  ListTile(
    title: const Text('Jobs Offers',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 238, 238), fontWeight: FontWeight.bold, fontSize: 12 // Change the text color here
            )),
    leading:  const Icon(Icons.work_rounded),
    onTap: () {

    },
  ),

  ListTile(
    title: const Text('Free Webinars ',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 238, 238), fontWeight: FontWeight.bold, fontSize: 12 // Change the text color here
            )),
    leading:  const Icon(Icons.video_call),
    onTap: () {

    },
  ),ListTile(
    title: const Text('Profile',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 238, 238), fontWeight: FontWeight.bold, fontSize: 12 // Change the text color here
            )),
    leading:  const Icon(Icons.person),
    onTap: () {

    },
  ),
Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
          child: Container(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Color.fromARGB(255, 0, 0, 0), // Change the line color here
                ),
              ),
            ),
          
            child: ListTile(
              title: const Text('Logout',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 238, 238), fontWeight: FontWeight.bold, fontSize: 12 // Change the text color here
                      )),
              leading:  const Icon(Icons.logout),
              onTap: () {
                if(UtilClass.prefs!=null){                  
                  UtilClass.prefs!.remove(UtilClass.isLogInKey);
                  UtilClass.prefs!.remove(UtilClass.unameKey);
                  UtilClass.prefs!.remove(UtilClass.pwKey);

                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginPage()), 
                        (route) => false,
                  );
                }
              },
            )
          )
          )
    ),
];

return menuItems;
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        drawer: Drawer(
          child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 67, 135, 204), // Change the color here
              ),
              child: ListView(
                children: mydrower(context)
            ),
          )            
        ),
        appBar: AppBar(title: const Text('Home')),
        body: const MyScaffoldBody(),

      ),
      color: Colors.blue,
    );
  }
}

class MyScaffoldBody extends StatelessWidget {
  const MyScaffoldBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      
    );
  }
}
