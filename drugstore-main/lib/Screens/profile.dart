import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
    bool theme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor:  Color(0XFFEDEDFC),
      
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           UserAccountsDrawerHeader(
            accountName: Text('Amelia Khaled'),
            accountEmail: Text('Amelia@Gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                'A',
                style: TextStyle(fontSize: 40.0, color: Colors.black),
              ),
            ),
            decoration: BoxDecoration(
             
              gradient: LinearGradient(
                colors: [ Color.fromARGB(255, 76, 76, 220),Colors.blue],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
                     ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text("ACCOUNT", style: GoogleFonts.acme(
            textStyle: TextStyle(fontSize: 12, color: Colors.grey),
                    ),),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(right: 10 ,left: 10),
             decoration: BoxDecoration( 
              color: Colors.white.withOpacity(0.5),
      
             ),
            child: ListTile(
              leading: const Icon(
                Icons.person,
                color: Colors.blue,
              ),
              title:  Text('Edit profile'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            
          ),
           SizedBox(height: 10),
          Container(
            margin: EdgeInsets.only(right: 10 ,left: 10),
            decoration: BoxDecoration( 
              color: Colors.white.withOpacity(0.5),
            ),
            child: ListTile(
        
              leading: const Icon(Icons.lock_outline, color: Colors.pink),
              title: const Text('Privacy'),
              trailing: Icon(
                Icons.arrow_right,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
           SizedBox(height: 10),
           Container(
            margin: EdgeInsets.only(right: 10 ,left: 10),
            decoration: BoxDecoration( 
              color: Colors.white.withOpacity(0.5),
            ),
            child: ListTile(
        
              leading:  Icon(theme == false ?  Icons.dark_mode : Icons.light_mode, color: theme == false ? Colors.black : Colors.white),
              title:  Text('Theme'),
              trailing: Switch(value: theme, onChanged: (value) {

                setState(() {
                theme = !theme;
                  
                });
              },),
           
            ),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.only(right: 10 ,left: 10),
            decoration: BoxDecoration( 
              color: Colors.white.withOpacity(0.5),
            ),
            
            child: ListTile(
        
              leading: const Icon(Icons.settings, color: Color(0XFF101010)),
              title: const Text('Settings'),
              trailing: Icon(
                Icons.arrow_right,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          const Spacer(),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
        ],
      ),
    );
  }
}
