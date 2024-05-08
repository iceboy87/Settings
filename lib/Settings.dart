import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Settings",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: "assets/font/times_new_roman.ttf")
          ,),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 1150,
          width: 450,
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 150,
                  width: 390,
                  decoration: BoxDecoration(
                    color: Color(0xfffeab41),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Row(
                      children: [
                        ClipOval(
                          child: SizedBox(
                            width: 110, // Adjust the size as needed
                            height: 110, // Adjust the size as needed
                            child: Image(image: AssetImage("assets/image.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40,left: 50),
                          child: Column(
                            children: [
                              Text("Bassirou",style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "assets/font/times_new_roman.ttf"),),
                              Text("Gueye",style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "assets/font/times_new_roman.ttf"),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              //Card Profile************************************************
              SizedBox(height: 20,),
              //****************************************
              Container(
                height: 500,
                width: 380,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white38),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [
                    SizedBox(height: 25,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 10),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 60,
                              width: 60,
                              child: Image(
                                image: AssetImage("assets/app.png"),
                                fit: BoxFit.cover,)),
                          // Text Icon*********************
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              children: [
                                Text("Appearance",style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "assets/font/times_new_roman.ttf")),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text("Make Ziar App you's",style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w100,
                                      fontFamily: "assets/font/times_new_roman.ttf")),
                                ),
                              ],
                            ),
                          ),
                          // Text ************************
                          Padding(
                            padding: const EdgeInsets.only(left: 105),
                            child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_outlined)),
                          ),
                          //Iconbutton *************************
                          Divider(thickness: 5,color: Colors.black,),

                        ],
                      ),
                    ),
                    SizedBox(height: 18,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 10),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 60,
                              width: 60,
                              child: Image(
                                image: AssetImage("assets/fig.png"),
                                fit: BoxFit.cover,)),
                          // Text Icon*********************
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 133),
                                  child: Text("Privacy",style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "assets/font/times_new_roman.ttf")),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 13),
                                  child: Text("Lock Ziar App to improve Your privacy",style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      fontFamily: "assets/font/times_new_roman.ttf")),
                                ),
                              ],
                            ),
                          ),
                          // Text ************************
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_outlined)),
                          ),
                          //Iconbutton *************************
                          Divider(thickness: 2,color: Colors.white10,),

                        ],
                      ),
                    ),
                    SizedBox(height: 18,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 10),
                      child: Row(
                        children: [
                          SizedBox(
                              height: 60,
                              width: 60,
                              child: Image(
                                image: AssetImage("assets/dark.png"),
                                fit: BoxFit.cover,)),
                          // Text Icon*********************
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Text("Dark Mode",style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "assets/font/times_new_roman.ttf")),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Text("Automatic",style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w100,
                                      fontFamily: "assets/font/times_new_roman.ttf")),
                                ),
                              ],
                            ),
                          ),
                          // Text ************************
                          Padding(
                            padding: const EdgeInsets.only(left: 115),
                            child: Switch(
                                value: isSwitched,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched = value;
                                  });
                                }),
                          ),
                          //Iconbutton *************************
                          Divider(thickness: 2,color: Colors.white10,),

                        ],
                      ),
                    ),
                    SizedBox(height: 18,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 10),
                      child: Row(
                        children: [
                          SizedBox(
                              height: 60,
                              width: 60,
                              child: Image(
                                image: AssetImage("assets/message.png"),
                                fit: BoxFit.cover,)),
                          // Text Icon*********************
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 98),
                                  child: Text("About",style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "assets/font/times_new_roman.ttf")),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 13),
                                  child: Text("Learn More about Ziar App",style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w100,
                                      fontFamily: "assets/font/times_new_roman.ttf")),
                                ),
                              ],
                            ),
                          ),
                          // Text ************************
                          Padding(
                            padding: const EdgeInsets.only(left: 55),
                            child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_outlined)),
                          ),
                          //Iconbutton *************************
                          Divider(thickness: 2,color: Colors.white10,),

                        ],
                      ),
                    ),
                    SizedBox(height: 18,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 10),
                      child: Row(
                        children: [
                          SizedBox(
                              height: 60,
                              width: 60,
                              child: Image(
                                image: AssetImage("assets/img.png"),
                                fit: BoxFit.cover,)),
                          // Text Icon*********************
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 82),
                                  child: Text("Send Feedback",style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "assets/font/times_new_roman.ttf")),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 13),
                                  child: Text("Let as Know how we can make Ziar App",style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      fontFamily: "assets/font/times_new_roman.ttf")),
                                ),
                              ],
                            ),
                          ),
                          // Text ************************
                          Padding(
                            padding: const EdgeInsets.only(right:  1),
                            child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_outlined)),
                          ),
                          //Iconbutton *************************
                          Divider(thickness: 2,color: Colors.white10,),

                        ],
                      ),
                    ),
                    SizedBox(height: 18,),
                    //Account***************************

                    //Text*******************************


                  ],
                ),
              ),
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Text("Account",style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: "assets/font/times_new_roman.ttf")),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: 200,
                width: 380,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white38),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 10),
                      child: Row(
                        children: [
                          SizedBox(
                              height: 60,
                              width: 60,
                              child: Icon(Icons.login)),
                          // Text Icon*********************
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 82),
                                  child: Text("Sign Out",style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "assets/font/times_new_roman.ttf")),
                                ),

                              ],
                            ),
                          ),
                          // Text ************************
                          Padding(
                            padding: const EdgeInsets.only(left: 65),
                            child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_outlined)),
                          ),
                          //Iconbutton *************************
                          Divider(thickness: 2,color: Colors.white10,),

                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 10),
                      child: Row(
                        children: [
                          SizedBox(
                              height: 60,
                              width: 60,
                              child: Icon(Icons.email)),
                          // Text Icon*********************
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 82),
                                  child: Text("Change Email",style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "assets/font/times_new_roman.ttf")),
                                ),

                              ],
                            ),
                          ),
                          // Text ************************
                          Padding(
                            padding: const EdgeInsets.only(left:  30),
                            child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_outlined)),
                          ),
                          //Iconbutton *************************
                          Divider(thickness: 2,color: Colors.white10,),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
