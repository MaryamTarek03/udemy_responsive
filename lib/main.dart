import 'package:flutter/material.dart';
import 'package:tasks/modules/LoginScreen.dart';
import 'package:tasks/modules/task2whatsapp.dart';

void main() {
  runApp(const MaterialApp(
    home: Login(),
  ));
}

class Task01 extends StatefulWidget {
  const Task01({Key? key}) : super(key: key);

  @override
  State<Task01> createState() => _Task01State();
}

class _Task01State extends State<Task01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Business Card"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 130,
              backgroundImage: AssetImage("assets/images/tian-zi-3.jpg"),
            ),
            // const FlutterLogo(size: 50,),
            const SizedBox(
              height: 10,
            ),
            const Text("Maryam Tarek",style: TextStyle(
              fontSize: 35,
              letterSpacing: 5,
              fontWeight: FontWeight.bold,
            ),),
            const Text("Hope this works",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),),
            const SizedBox(
              height: 55,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                border: Border.all(
                  width: 2,
                  color: Colors.black,
                  style: BorderStyle.solid,
                ),
              ),
              child: Row(
                children: const [
                  Icon(Icons.phone,),
                  SizedBox(
                    width: 5,
                  ),
                  Text("0123456789",style: TextStyle(
                    fontSize: 20,
                  ),)
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              width: 350,
              height: 60,
              // color: Colors.black,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                border: Border.all(
                  width: 2,
                  color: Colors.black,
                  style: BorderStyle.solid,
                ),
              ),
              child: Row(
                children: const [
                  Icon(Icons.email),
                  SizedBox(
                    width: 5,
                  ),
                  Text("ANemail@gmail.com",style: TextStyle(
                    fontSize: 20,
                  ),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
