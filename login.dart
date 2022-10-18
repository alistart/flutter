import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       body: SizedBox(
        height: double.infinity,
        width: double.infinity,
          child: Stack(
          children: [
            SizedBox(
              width: double.infinity,              
              child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                  height: 30,
                ),
                  const Text(
                    "Log in", style: TextStyle(fontSize: 33, fontFamily: "myfont"),),
                  const SizedBox(
                  height: 15,
                ),                 
                  SvgPicture.asset("assets/icons/login.svg",width: 288,),
                   const SizedBox(
                  height: 30,
                ),                
                   Container(
                decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(66),
                ),
                width: 266,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: const TextField(
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.person,
                        color: Color.fromARGB(255, 133, 27, 154),
                      ),
                      hintText: "Your Email :",
                      border: InputBorder.none),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(66),
                ),
                width: 266,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      suffix: Icon(
                        Icons.visibility,
                        color: Colors.purple[100],
                      ),
                      icon: const Icon(
                        Icons.lock,
                        color: Color.fromARGB(255, 150, 27, 154),
                        size: 20,
                      ),
                      hintText: "Password :",
                      border: InputBorder.none),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                 onPressed: () {                  
                 },                
                style: ButtonStyle(
                  backgroundColor:
                   MaterialStateProperty.all(Colors.purple),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(
                        horizontal: 89, vertical: 10)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27))),
                ),
                child: const Text(
                  "Sign up",
                  style: TextStyle(fontSize: 24),
                ),
              ),   
             const SizedBox(
                height: 20,
              ),

              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    const Text("Don't have an account? "),
                  GestureDetector(
                      onTap: (){ Navigator.pushNamed(context, "/signup");
                      },                      
                        child:
                       const Text(
                        " Sign up",
                         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),)),                    
                  ],
                )
              ],
              ),
            ),
             Positioned(
              left: 0,
              child: Image.asset("assets/images/main_top.png", width: 100,),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset("assets/images/login_bottom.png",
                 width: 100,),
                ),
          ],
       ),
        ), 
      ),
    );
  }
}