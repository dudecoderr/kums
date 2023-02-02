import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Npp()));
}

class Npp extends StatefulWidget {
  const Npp({super.key});
  @override
  State<Npp> createState() => _NppState();
}

class _NppState extends State<Npp> {
  var name = ["vijay", "sk", "samantha", "samyuktha", "Dq"];
  var num = [
    "86676425434",
    "8109437812",
    "9018399026",
    "9163782190",
    "8163278393"
  ];


  var img = [
    "assets/images/girl2.jpg",
    "assets/images/girl3.jpg",
    "assets/images/girl4.jpg",
    "assets/images/girl5.jpg",
    "assets/images/girl6.jpg",
  ];
  dumyes(index) {
    setState(() {
      name.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("KUMSGRAM", style: TextStyle(color: Colors.pink)),
          backgroundColor: Colors.orange,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search_sharp)),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                    Icons.signal_cellular_connected_no_internet_4_bar_sharp)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.battery_charging_full_sharp)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.more_vert_sharp))
          ],
        ),
        drawer: Drawer(
          elevation: 15,
          child: Column(
            children: const <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Kums"),
                accountEmail: Text("kumaragururf123@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.redAccent,
                  backgroundImage: AssetImage("assets/images/kums.jpeg"),
                ),
              ),
              ListTile(
                title: Text("Security"),
                leading: Icon(
                  Icons.security,
                  color: Colors.black87,
                ),
              ),
              Divider(
                height: 0.1,
                thickness: 3,
                color: Colors.lightBlue,
              ),
              ListTile(
                title: Text("Contact"),
                leading: Icon(
                  Icons.contact_mail_rounded,
                  color: Colors.black87,
                ),
              ),
              Divider(
                height: 0.1,
                thickness: 3,
                color: Colors.lightBlue,
              ),
              ListTile(
                title: Text("Setting"),
                leading: Icon(
                  Icons.settings_applications_sharp,
                  color: Colors.black87,
                ),
              ),
              Divider(
                height: 0.1,
                thickness: 3,
                color: Colors.lightBlue,
              ),
              ListTile(
                title: Text("Notification"),
                leading: Icon(
                  Icons.notifications_active,
                  color: Colors.black87,
                ),
              ),
              Divider(
                height: 0.1,
                thickness: 3,
                color: Colors.lightBlue,
              ),
              ListTile(
                title: Text("Logout"),
                leading: Icon(
                  Icons.logout,
                  color: Colors.black87,
                ),
              ),
              Divider(
                height: 0.1,
                thickness: 3,
                color: Colors.lightBlue,
              )
            ],
          ),
        ),
        body: ListView.builder(
            itemCount: name.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    (ListTile(
                        leading: Image.asset(img[index]),
                        title: Text(name[index]),
                        subtitle: Text(num[index]),
                        trailing: Wrap(spacing: 2, children: [
                          IconButton(
                              icon: const Icon(Icons.call),
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) {
                                    return const Seco();
                                  }),
                                );
                              }),
                          IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () {
                              dumyes(index);
                            },
                          )
                        ]))),
                  ],
                ),
              );
            }));
  }
}

class Seco extends StatelessWidget {
  const Seco({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calling"),
      ),
    );
  }
}

