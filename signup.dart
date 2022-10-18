import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

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
                  height: 19,
                ),
                  const Text(
                    "sign up", 
                    style: TextStyle(fontSize: 35, fontFamily: "myfont", color: Colors.grey),
                    ),
                  const SizedBox(
                  height: 18,
                ),                 
                  SvgPicture.asset(
                    "assets/icons/signup.svg",
                    height: 180,
                    ),
                   const SizedBox(
                  height: 20,
                ),                
                   Container(
                decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(66),
                ),
                width: 300,
                padding: const EdgeInsets.symmetric(horizontal: 10),
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
                height: 18,
              ),
              Container(
                decoration: BoxDecoration(
                 color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(66),
                ),
               width: 300,
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
                        size: 19,
                      ),
                      hintText: "Password :",
                      border: InputBorder.none),
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              ElevatedButton(     
                onPressed: () {},                                                 
                style: ButtonStyle(
                  backgroundColor:
                   MaterialStateProperty.all(Colors.purple),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(
                        horizontal: 90, vertical: 10)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27))),
                ),
                child: const Text(
                  "SIGN UP",
                  style: TextStyle(fontSize: 22),
                ),
              ),    
             const SizedBox(
                height: 22,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                  const  Text("Already have an account? "),
                    GestureDetector( 
                      onTap: (){ Navigator.pushNamed(context, "/login");
                      }, 
                      child:
                       const Text(
                        " Log In", 
                        style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                    ),   
                 
                  ],
                ),
                const SizedBox(
                height: 28,
              ),
              SizedBox(
                width: 290,
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                       thickness: 0.6, 
                       color: Colors.purple[700],
                    )),
                    Text(
                      "OR",
                       style: TextStyle(
                        color: Colors.purple[700],
                      ),
                    ), 
                    Expanded(
                      child: Divider(
                         thickness: 0.6, 
                         color: Colors.purple[700],
                        ),
                      ),
                  ],
                ),
              ),               
               Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: (){},
                    child: Container(
                      padding: const EdgeInsets.all(13),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border:
                             Border.all(color: Colors.purple , width: 1 )
                      ),
                      child:
                       SvgPicture.asset(
                        "assets/icons/facebook.svg",
                        color: Colors.purple[400],
                        height: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                    ),
                  GestureDetector(
                      onTap: (){},
                    child: Container(
                      padding: const EdgeInsets.all(13),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.purple , width: 1 )
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/google-plus.svg",
                        color: Colors.purple[400],
                        height: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                    ),
                  GestureDetector(
                        onTap: (){},
                    child: Container(
                      padding: const EdgeInsets.all(13),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.purple , width: 1 )
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/twitter.svg",
                        color: Colors.purple[400],
                        height: 20,
                      ),
                    ),
                  ),                               
                ],
              ),
            ),
              ],
              ),

            ),
             Positioned(
              left: 0,
              child: Image.asset("assets/images/main_top.png", width: 111,),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(
                  "assets/images/login_bottom.png",
                 width: 111,),
                ),
          ],
       ),
        ), 
      )
    );
  }
}