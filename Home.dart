import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:ui';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      body: Stack(
        children: [

          Positioned.fill(
            child: Image.asset('assets/images/bb2.jpeg',
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.6),
            colorBlendMode: BlendMode.darken,
            ),
            ),

          ListView(
              padding: EdgeInsets.symmetric(horizontal: 30),
              children:[
                SizedBox(height: 40,),
                Center(child: Icon(FontAwesomeIcons.crown,size: 50,color: Colors.pink,)),
                SizedBox(height: 10,),
                Center(child: Text('Burger\n Queen',textAlign: TextAlign.center,style:GoogleFonts.lobster(color: Colors.white.withOpacity(0.8),fontSize: 50,fontWeight: FontWeight.w500) ,),),
                SizedBox(height: 200,),
                Center(child: Text('I\'M tasty \n and \n you know it !',textAlign: TextAlign.center,style: GoogleFonts.lobster(color: Colors.white.withOpacity(0.8),fontSize: 20,fontWeight: FontWeight.w400),),),
                SizedBox(height: 20,),

                Container(
                
                  height: 52,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(8),
                     
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.burger,size: 30,color: Colors.black.withOpacity(0.7),),
                      SizedBox(width: 10,),
                      TextButton(onPressed: (){
                        Navigator.pushNamed(context, 'Burger2');
                        print('Go to Burger 2 page.');

                      },
                       child: Text('Grabe Some',style: GoogleFonts.lobster(fontSize: 30,color: Colors.black.withOpacity(0.8)),))
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Center(child: Text('Mood & Food',style: GoogleFonts.lobster(color: Colors.white.withOpacity(0.8),fontSize: 24),),),
                SizedBox(height: 50,),

              ]
              
              )
        ],
      
       
      ),
      
      
    );
  }
}