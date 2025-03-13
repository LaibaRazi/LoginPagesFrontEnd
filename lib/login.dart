import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/Backwithlogo.png'),fit: BoxFit.cover)
        ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35,top: 130),
              child: Text(' Welcome To \nJEWELRY STORE',style: TextStyle(
                color: Colors.white , fontSize: 30
              ),),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5,left: MediaQuery.of(context).size.width*0.07
                    ,right: MediaQuery.of(context).size.width*0.07),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey,
                        filled: true,
                        hintText: "Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.grey,
                        filled: true,
                        hintText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                    ),
                    SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Sign In',style: TextStyle(
                          fontSize: 27, fontWeight: FontWeight.w700 ,color: Colors.white
                        ),
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white70,
                          child: IconButton(onPressed:(){},
                              icon: Icon(Icons.arrow_forward_ios)),

                        )
                      ],
                    ),
                    SizedBox(height: 40
                      ,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: (){}, child: Text('Sign Up',style: TextStyle(
                            decoration:TextDecoration.underline ,
                            fontSize: 18,
                            color: Colors.white70
                        ),
                        ),
                        ),
                        TextButton(onPressed: (){},
                            child: Text('Forgot Password',style: TextStyle(
                                decoration:TextDecoration.underline ,
                                fontSize: 18,
                                color: Colors.white70
                            ),))
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
