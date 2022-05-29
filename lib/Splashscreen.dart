import 'dart:async';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:slang_converter/main.dart';
class Spalshscreen extends StatefulWidget {
  @override
  _SpalshscreenState createState() => _SpalshscreenState();
}

class _SpalshscreenState extends State<Spalshscreen> {
@override
  void initState() { 
    super.initState();
    Timer(Duration(seconds: 5), (){
      setState(() {
        print("splash done");
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>MyCustomForm()), (route) => false);
      });
    }
    );

    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
       body: Stack(
         fit: StackFit.expand,
         children:[
           
                Stack(
                  children: [
                    Container(
                      height: double.infinity,
                      width: double.infinity,
                     
                      decoration: BoxDecoration(
                        //  color:Colors.blue,
                        //  backgroundBlendMode: BlendMode.colorBurn
                         gradient: LinearGradient(
              begin: Alignment.topRight,
              colors:[
                Colors.red.withOpacity(0.9),
                Colors.red.withOpacity(0.7)
              ]
              ),
                  


                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top:220),
                        child: Column(
                           mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(bottom:40),
                               child: Center(
                                 child: Container(
                                   height: 220,
                                   width: 220,
                                   
                                   child: Image.asset("images/problem.png")),
                               ),
                             ),
                             SizedBox(
                               height:20
                             ),
                              Text("Slang Translator",
                             style: GoogleFonts.roboto(
                               textStyle: TextStyle(
                                 fontSize: 35,
                                 color: Colors.white,
                                 fontWeight: FontWeight.bold
                                 )

                             ),
                             ),
                               SizedBox(
                               height:20
                             ),
                           
                            
                                 CircularProgressIndicator(
                                backgroundColor: Colors.white,


                                 ),
                                   
                                 
                               
                           ],
                        ),
                      ),
                    )
                  ],
                ),


         ]

       ),
      
    );
  }
}