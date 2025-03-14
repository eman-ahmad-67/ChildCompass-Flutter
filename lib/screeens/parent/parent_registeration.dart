import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class parentRegistration extends StatefulWidget {
  @override
  _ParentRegistrationState createState() => _ParentRegistrationState();
}

class _ParentRegistrationState extends State<parentRegistration> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: CircleAvatar(
            radius: 10,
            backgroundColor: Colors.black38,
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.arrow_back, color: Colors.black),
              splashColor: Colors.white,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
         height:    MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/map.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 5,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Expanded(
                    flex: 2,
                    child: Transform.scale(
                      scale: 1.1,
                      child: Lottie.asset(
                        "assets/animations/parent.json",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 170,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/messageBox/goodparent.png"),
                          fit: BoxFit.contain,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    width: 320,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white.withOpacity(0.3)),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("REGISTER", style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold,fontFamily: "Quantico" , fontSize: 18),),
                        SizedBox(height: 10,),
                        TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.8),
                            hintText: "Name",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.8),
                            hintText: "Email",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                    TextField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.8),
                        hintText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                        SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: ()=>{Navigator.pushNamed(context, '/emailVerification')},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 15),
                          ),
                          child: Center(
                            child: Text(
                              "Continue",
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an account ? ", style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold,fontFamily: "Quantico" , fontSize: 12),),
                            InkWell(onTap: ()=>{Navigator.pushNamed(context, '/parentLogin')}, child: Text("Login", style: TextStyle(color: Colors.orange , fontWeight: FontWeight.bold,fontFamily: "Quantico" , fontSize: 12 ),)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
