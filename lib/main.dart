
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Lab_6());
}

class Lab_6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI',
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              Container(
              color: Colors.blue,
              height: 80,
              child: DrawerHeader
              (
               child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.logo_dev_outlined),
                  TextButton.icon(
                    onPressed: () {},
                    label: Text('Home'),
                  )
                ]
               )
              ),
              ),
              ListTile(
                leading: Icon(Icons.alarm),
                title: Text("Recents"),
                trailing: Icon(Icons.arrow_upward_rounded),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.image),
                title: Text("Images"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.video_settings),
                title: Text("Videos"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: () {},
              ),
            ],
          )
        ),
        appBar: AppBar(
          title: Text('Flutter UI'),
          centerTitle: true,
          backgroundColor: Colors.blue,
          foregroundColor: const Color.fromARGB(255, 11, 9, 9),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image(
                image: NetworkImage('https://wallpapers-clan.com/wp-content/uploads/2024/02/beautiful-naruto-uzumaki-clouds-desktop-wallpaper-preview.jpg'),
              ),
              Image.network(
                "https://wallpapers-clan.com/wp-content/uploads/2024/02/beautiful-naruto-uzumaki-clouds-desktop-wallpaper-preview.jpg",
              ),
              Image.network(
                "https://wallpapers-clan.com/wp-content/uploads/2024/02/beautiful-naruto-uzumaki-clouds-desktop-wallpaper-preview.jpg",
              ),
              Image.network(
                "https://wallpapers-clan.com/wp-content/uploads/2024/02/beautiful-naruto-uzumaki-clouds-desktop-wallpaper-preview.jpg",
              ),
              Image.network(
                "https://wallpapers-clan.com/wp-content/uploads/2024/02/beautiful-naruto-uzumaki-clouds-desktop-wallpaper-preview.jpg",
              ),
              CachedNetworkImage(
              imageUrl: "https://mcdn.wallpapersafari.com/medium/91/15/v7SGlT.jpg",
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
     ), 
            ]
          ),
        ),
          ),
        );    
  }
}