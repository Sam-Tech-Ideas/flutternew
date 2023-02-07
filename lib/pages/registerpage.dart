import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: 
        Colors.white,
        elevation: 0,
      leading: 
       IconButton(
         icon: const Icon(Icons.arrow_back),
          color: Colors.black,
         onPressed: () {},
       ),

      
      
      ),

          
        
  
    
      body:
   

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
             
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/groc.png',
                  width: 200,
                  height: 200,      
                  ),
                ),
              ],
            ),

            
         
      
     
   
   
    
  
    
      
    );
  }
}