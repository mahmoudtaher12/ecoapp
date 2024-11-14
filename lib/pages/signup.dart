import 'package:ecoapp/provider/signpro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'login.dart';
class Signup extends StatelessWidget {
 var name=TextEditingController();
 var phone=TextEditingController();
 var email=TextEditingController();
 var password=TextEditingController();
  var formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var p=Provider.of<provider1>(context);
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text(""),
        centerTitle: true,
      ),
      body: Form(
        key: formkey,
          child: Container(
            color: Colors.black,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 500,
                  child: TextFormField(
                    validator: (value){
                      if(value==null || value.isEmpty)
                        {
                          return "user  ";
                        }
                    },
                    controller: name,
                    decoration: InputDecoration(
                      label: Text("user"),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  width: 500,
                  child: TextFormField(
                    validator: (usere){

                    },
                    controller: email,
                    decoration: InputDecoration(
                        label: Text("email"),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  width: 500,
                  child: TextFormField(
                    validator: (user){
                    },
                    controller: phone,
                    decoration: InputDecoration(
                        label: Text("phone"),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  width: 500,
                  child: TextFormField(
                    validator: (paaas){
                    },
                    controller: password,
                    decoration: InputDecoration(
                        label: Text("password"),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(250, 50)
                  ),
                    onPressed: (){
                   if(formkey.currentState!.validate()){
                     p.signup(name.text, phone.text, email.text, password.text);
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                   }

                }, child: Text("login",style: TextStyle(),)),
                SizedBox(height: 5,),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                }, child: Text("have account",style: TextStyle(fontSize: 25),))
              ],
            ),
          )
      )
    );
  }
}
