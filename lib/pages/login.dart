import 'package:chat/pages/register.dart';
import 'package:chat/widgets/customButton.dart';
import 'package:chat/widgets/textfieldwidget.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2B475E),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Spacer(flex: 2,),
            Image.asset('assets/images/scholar.png'),
            Text('Scholar Chat',
            style: TextStyle(
              fontSize: 32,
              color: Colors.white,
              fontFamily: 'pacifico'
            ),
            ),
            Spacer(flex: 2,),
            
             Row(
               children: [
                 Text('LOG IN',
                             style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  
                             ),
                             
                             ),
               ],
             ),
             const SizedBox(height: 15,),
         CustomTextField(hintText: "EMAIL",
          
          ),
          const SizedBox(height: 15,),
          CustomTextField(hintText: "password",
          
          ),
          const SizedBox(height: 15,),
         CustomButton(txt: "LOGIN",),
         SizedBox(height: 10,),
         Row(
          children: [
            Text("already have an account",style: TextStyle(color: Colors.white),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, 'register');
              },
              child: Text(' REGISTER',style: TextStyle(
                color: Color(0xffC7EDE6)
              ),),
            )
          ],
         ),
         Spacer(flex: 2,)

          ],
        ),
      ),
    );
  }
}