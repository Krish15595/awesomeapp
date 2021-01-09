import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Awesome App",
    theme: ThemeData(
        primarySwatch: Colors.purple //it automatically adjust primary accent
        ),
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Container(),
      drawer: Drawer(
        child: ListView(
          children: [
            //this is normal header
            // DrawerHeader(
            //   child: Text(
            //     "Nav Header",
            //     style: TextStyle(color: Colors.white),
            //   ),
            //   decoration: BoxDecoration(color: Colors.purple),
            // ),
            UserAccountsDrawerHeader(
              accountName: Text("Krishna Gajula"),
              accountEmail: Text("gajulakrishna007@gmail.com"),
              currentAccountPicture:CircleAvatar(
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1586083702768-190ae093d34d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8bWFufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
              )
                  // Image.network("https://images.unsplash.com/photo-1586083702768-190ae093d34d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8bWFufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",fit: BoxFit.cover ),
            ),
            ListTile(
              title: Text("Account"),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.edit),
              subtitle: Text("Personal"),
            ),
            ListTile(
              title: Text("Email"),
              leading: Icon(Icons.mail),
              trailing: Icon(Icons.send),
              subtitle: Text("gajulakrishna007@gmail.com"),
            ),
            ListTile(
              title: Text("Send"),
              leading: Icon(Icons.share),
              trailing: Icon(Icons.send),
              subtitle: Text("Personal"),
            ),
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,  change floating button location
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
        // mini:true,
      ),
    );
  }
}
