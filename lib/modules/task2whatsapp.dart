import 'package:flutter/material.dart';
import 'package:tasks/main.dart';

import 'WidgetTesting.dart';

class WhatsApp extends StatefulWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  final List<String> messages = <String>['Maryam Tarek', 'Mohamed Hosny', 'Some Name','Samir Basha','Ahmed Fathy','Farah Ahmed','Shrouk Khaled',
    'Emad Sobhy','Maryam Again', 'Mohamed Brother', 'Iam Tired','Samir Enough','Ahmed','Farah','Shrouk','Emad'];
  List <IconData> myIcons = [
    // {'item' : 1}
    Icons.mic,
    Icons.done,
    Icons.mic,
    Icons.mic,
    Icons.done_all,
    Icons.mic,
    Icons.done_all,
    Icons.mic,
    Icons.mic,
    Icons.done,
    Icons.mic,
    Icons.done,
    Icons.mic,
    Icons.mic,
    Icons.done_all,
    Icons.mic,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(child : const Icon(Icons.camera_alt),
        onPressed: (){},
        backgroundColor: Colors.green,
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("WhatsApp"),
        actions: const [
          Icon(Icons.search),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.message),
          ),
        ],
      ),
      drawer: SafeArea(
        child: Drawer(
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                // padding: const EdgeInsets.fromLTRB(5, 50, 0, 5),
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("assets/images/-ey-2.jpg"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Maryam Tarek",style: TextStyle(
                      fontSize: 20,
                      // fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                    Text("AnEmail@gmail.com",style: TextStyle(
                      color: Colors.white,
                    ),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView.separated(
        itemCount: 16,
          separatorBuilder: (BuildContext context, int index) => const Divider(
            indent: 80,
            endIndent: 20,
            thickness: 1,
          ),
        itemBuilder: (BuildContext context, int index){
          return ListTile(
            leading: const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/images/-ey-2.jpg"),
            ),
            trailing: const Text("11:30 AM"),
            title: Text(messages[index],style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 19,
            ),),
            subtitle: Row(
              children: [
                Icon(myIcons[index]),
                const Text("  1:49"),
              ],
            ),
          );
        }
      ),
    );
  }
}
