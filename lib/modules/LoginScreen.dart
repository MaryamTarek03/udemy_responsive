import 'package:flutter/material.dart';
import 'package:tasks/modules/task2whatsapp.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 250,
                  width: 250,
                  child: Image(image: AssetImage("assets/images/—Pngtree—lettering of ahlan wa sahlan_6587001.png"))),
              TextFormField(
                // key: _formKey,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value != 'gdsc@gmail.com' || value==null) {
                    return 'Invalid Email';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  prefixIconColor: Colors.green,
                  labelText: "Email",
                    hintText: 'psst 👀, it is gdsc@gmail.com ;D',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(35)),
                        borderSide: BorderSide(
                          color: Colors.black,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(35)),
                        borderSide: BorderSide(
                          color: Colors.green,
                        )),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(35)),
                        borderSide: BorderSide(
                          color: Colors.red,
                        )
                    ),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(35)),
                      borderSide: BorderSide(
                        color: Colors.red,
                      )
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              TextFormField(
                obscureText: true,
                // key: _formKey,
                validator: (value) {
                  if (value != 'gdsc' || value==null) {
                    return 'Invalid Password';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.key),
                  prefixIconColor: Colors.green,
                  labelText: "Password",
                  hintText: 'and that is just gdsc',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(35)),
                      borderSide: BorderSide(
                        color: Colors.black,
                      )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(35)),
                      borderSide: BorderSide(
                        color: Colors.green,
                      )),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(35)),
                      borderSide: BorderSide(
                        color: Colors.red,
                      )
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(35)),
                      borderSide: BorderSide(
                        color: Colors.red,
                      )
                  ),
                ),
              ),
              const SizedBox(height: 25,),
              SizedBox(
                width: 250,
                height: 45,
                child: ElevatedButton(style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35))
                ),
                    onPressed: (){
                  if (_formKey.currentState!.validate())
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const WhatsApp()));
                    }
                }, child: const Text("Login",style: TextStyle(
                      fontSize: 20,
                    ),)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
