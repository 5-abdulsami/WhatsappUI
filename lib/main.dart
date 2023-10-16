import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          bottom: TabBar(tabs: [
            Tab(
              child: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text('Chats'),
            ),
            Tab(
              child: Text('Status'),
            ),
            Tab(
              child: Text('Calls'),
            ),
          ]),
          actions: [
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
            PopupMenuButton(
              icon: Icon(Icons.more_vert),
              itemBuilder: ((context) => [
                    PopupMenuItem(
                      value: '1',
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('New Group'),
                      ),
                    ),
                    PopupMenuItem(
                      value: '2',
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Settings'),
                      ),
                    ),
                    PopupMenuItem(
                      value: '3',
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Log Out'),
                      ),
                    ),
                  ]),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Camera')), //Tab 1
            ListView.builder(
                //Tab 2
                itemCount: 30,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/me.jpg'),
                    ),
                    title: Text('Abdul Sami'),
                    subtitle: Text('5abdulsami2004@gmail.com'),
                    trailing: Text('6:36 pm'),
                  );
                }),
            ListView.builder(
                //Tab 3
                itemCount: 30,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'New Updates',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.lightGreen, width: 4),
                                shape: BoxShape.circle),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/me.jpg'),
                            ),
                          ),
                          title: Text('Abdul Sami'),
                          subtitle: Text('6:36 pm'),
                        ),
                      ],
                    );
                  } else {
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.lightGreen, width: 4),
                            shape: BoxShape.circle),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/me.jpg'),
                        ),
                      ),
                      title: Text('Abdul Sami'),
                      subtitle: Text('6:36 pm'),
                    );
                  }
                }),
            ListView.builder(
                itemCount: 30,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/me.jpg'),
                    ),
                    title: Text('Abdul Sami'),
                    subtitle: Align(
                        alignment: Alignment.topLeft,
                        child: Icon(
                            index % 2 == 0 ? Icons.phone : Icons.video_call)),
                    trailing: Text('6:36 pm'),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
