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
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'images/groc.png',
                width: 200,
                height: 200,
              ),
            const Text("Let's you in",
                style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                )),

            const SizedBox(

              height: 20,
            ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: ElevatedButton.icon(onPressed: (){},
                     style: 
                   ElevatedButton.styleFrom(
                     backgroundColor: Colors.white,
                     foregroundColor: Colors.black,
                     padding: 
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    side: 
                      const BorderSide(color: Colors.black12, width: 1),
                      
                     elevation: 0,
                   ),
             
             
             icon: Image.asset('images/G.png', width: 20, height: 20,),
              
                label: const Text("Continue with Google",
                
                style: TextStyle(
                  fontSize: 10,
                  
                
                ),
                ),
               
                     
                    
             ),
           ),

           SizedBox(
              height: 60,
            ),

           const Center(
             child: Text("or",
                  style: TextStyle(
                    fontSize: 20,
                  
                  )),
           ),

          
          
          //  style: ElevatedButton.styleFrom(
          //    backgroundColor: Colors.white,
          //    foregroundColor: Colors.black,
          //    shape: RoundedRectangleBorder(
          //      borderRadius: BorderRadius.circular(30),
    
            SizedBox(
              height: 80,
            ),


            ElevatedButton(onPressed: (){}, 
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 25),
              side: const BorderSide(color: Colors.black12, width: 1),
              elevation: 0,
            ),
            child: 
            const Text("Sign in with Email and Password",
            
            style: TextStyle(
              fontSize: 10,
              
      
              
 
            ),
            ),
            
            
            ),

            const SizedBox(
              height: 20,
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?",

                style: TextStyle(
                  fontSize: 10,
                  
                ),
                ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Sign up",
                      ))
            
              ],
            ),
          


            ],
          ),
        ),
      ),
    );

           

            
      
            


  }
}