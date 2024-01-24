import 'package:chat/widgets/customButton.dart';
import 'package:chat/widgets/textfieldwidget.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Register extends StatelessWidget {
   Register({Key? key}) : super(key: key);

  String? email;
  String? password;
  GlobalKey<FormState> formKey =GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2B475E),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Spacer(flex: 2,),
              Image.asset('assets/images/scholar.png'),
              Text(
                'Scholar Chat',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontFamily: 'pacifico'
                ),
              ),
              Spacer(flex: 2,),
              
              Row(
                children: [
                  Text(
                    'REGISTER',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              CustomTextField(
                onChanged: (data){
                  email = data;
                },
                hintText: "EMAIL",
              ),
              const SizedBox(height: 15,),
              CustomTextField(
                onChanged: (data){
                  password = data;
                },
                hintText: "password",
              ),
              const SizedBox(height: 15,),
              CustomButton(
                onTap: () async {
                  if(formKey.currentState!.validate()){
                  try {
                    UserCredential user = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email!, password: password!);
                    
                  }
                  on FirebaseAuthException catch (e) {
                    if(e.code =='weak-password'){
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('weak password'),
                          )
                      );
                    }
                    else if(e.code =='email-already-in-use'){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('email already exist')
                      )
                      );
                    }
          
                    
                  }
                  ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('success'),
                          )
                      );
                  }
                  
                  
                },
                txt: "REGISTER",
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text("don't have an account", style: TextStyle(color: Colors.white),),
                  GestureDetector(
                    onTap:(){
                      Navigator.pop(context);
                    },
                    child: Text(
                      ' LOGIN',
                      style: TextStyle(
                        color: Color(0xffC7EDE6)
                      ),
                    ),
                  )
                ],
              ),
              Spacer(flex: 2,)
            ],
          ),
        ),
      ),
    );
  }
}
