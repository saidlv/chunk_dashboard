
import 'package:chunk_dashboard/screens/dashboard/dashboard.dart';
import 'package:chunk_dashboard/theme/theme.dart';
import 'package:flutter/material.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({Key? key}) : super(key: key);

  @override
  _AdminLoginState createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(backgroundColor: theme.appBackgroundColor,
      body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Row(
            children: [
              Container(width: 260,
                color: Colors.red,
                height: double.infinity,
                child:drawer(context),
              ),
              Expanded(
                child: SingleChildScrollView(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     
                             Padding(
                        padding:EdgeInsets.only(bottom: 20,right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Email:',style: TextStyle(color: theme.darkTextColor,fontSize: 13,fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none
                            ),
                            ),SizedBox(width: 20,),Container(alignment: Alignment.centerLeft,
                              padding: EdgeInsets.symmetric(horizontal: 10),height: 40,
                              width: 250,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                color: theme.whiteColor
                              ),child: TextField(
                                style:  TextStyle(color: theme.darkTextColor,fontSize: 12,fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none,
                            ),
                                decoration: InputDecoration(isDense: true,
                                  border: InputBorder.none,
                                 
                                ),
                              ),
                            ),
                            SizedBox(width: 137,)
                            ]
                        ),
                      ),
                        Padding(
                        padding:EdgeInsets.only(bottom: 20,right: 41),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Password:',style: TextStyle(color: theme.darkTextColor,fontSize: 13,fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none
                            ),
                            ),SizedBox(width: 20,),Container(alignment: Alignment.centerLeft,
                              padding: EdgeInsets.symmetric(horizontal: 10),height: 40,
                              width: 250,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                color: theme.whiteColor
                              ),child: TextField(
                                style:  TextStyle(color: theme.darkTextColor,fontSize: 12,fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none,
                            ),
                                decoration: InputDecoration(isDense: true,
                                  border: InputBorder.none,
                                 
                                ),
                              ),
                            ),
                            SizedBox(width: 137,)
                            ]
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 237,bottom: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [Container(
                            height: 20,width: 20,color: theme.lightTextColor,
                            child: Icon(Icons.done,color:theme.mainColor,size: 15 ,),
                          ),SizedBox(width: 10,),
                           Text('Remember me',style: TextStyle(color: theme.darkTextColor,fontSize: 12,fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none
                            ),)
                          ],
                        ),
                      ),
                        Container(height: 40,    width: 40,margin: EdgeInsets.only(bottom: 20,right: 305),
                  
                
               
                   child: Image.asset('assets/captcha.png'),
                 ),
                       SizedBox(height: 10,),
                      GestureDetector(onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Dashboard()));
                      },
                        child: Container(alignment: Alignment.center,margin: EdgeInsets.only(right: 100,bottom: 50),
                                padding: EdgeInsets.symmetric(horizontal: 10),height: 40,
                                      width: 100,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                        color:theme.mainColor
                                      ),child:  Text('Login',style: TextStyle(color: theme.whiteColor,fontSize: 13.5,fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none
                                ),
                                      ),
                              
                              ),
                      ),
                            
                            
                    ],
                  ),
    )
              )
            ],
          )),
    );
  }

  Widget drawer(context){
   return Container(
     height: double.infinity,
     width: double.infinity,
     color:    Colors.black,
     child: SingleChildScrollView(
       child: Column(
         children: [
           Container(
             height: 140,
             width: double.infinity,
             decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                       borderRadius: BorderRadius.only(
                           bottomRight: Radius.circular(20))
              ),
             // color: Colors.black,
             child: Column(mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Container(height: 60,    width: 60,
                   decoration: BoxDecoration(
                   ),
                
               
                   child: Image.asset('assets/logo.png'),
                 ), SizedBox(height: 10,),
                 Text('Chunks',style: TextStyle(color:theme.whiteColor,fontSize:15,fontWeight: FontWeight.w700  ),),
               
               ],
             ),
           )
         ],
       ),
     ),
   );
  }
}
