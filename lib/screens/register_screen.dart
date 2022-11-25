import 'package:flutter/material.dart';
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
         
          children: [
            Image.asset("assets/images/logo.png"),
            Form(
              child: Container(
                padding: const EdgeInsets.only(top:30),
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(

                         contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal:20.0),
                        hintText: "Phone number",
                        border: OutlineInputBorder(
                           borderRadius:  BorderRadius.all(
                         Radius.circular(10.0),),
                      
                        ),
                          
                        ),
                      ),
                    
                    const SizedBox(height: 25,),
                     Container(
                      clipBehavior: Clip.none,
                      // width: double.infinity,
                      // height: 50,
                       child: TextFormField(
                    
                        obscureText: true,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                          hintText: "Password",
                          border: OutlineInputBorder(
                            borderRadius:  BorderRadius.all(
                           Radius.circular(10.0)),
                        
                          ),
                        ),
                    ),
                     ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(onPressed:(){}, child:const Text("Forgot Password?",)))
                  ],
                
                ),
              
              ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                       padding: const EdgeInsets.fromLTRB(120, 20, 120, 20)

                    ), 
                   onPressed: (() {}), child: const Text("Login "),
                   ),
                   const SizedBox(width: 20,),
                  Image.asset("assets/images/touch.png"),
                ],
              ),
              const Padding(
                padding:  EdgeInsets.all(10.0),
                child:  Divider(thickness: 1,),
              )
              
          ],
          
        
        ),
      ),
    
    );
  }
}