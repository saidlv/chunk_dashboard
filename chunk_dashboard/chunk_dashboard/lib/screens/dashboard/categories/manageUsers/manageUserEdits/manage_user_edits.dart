import 'package:chunk_dashboard/theme/theme.dart';
import 'package:flutter/material.dart';

class ManageUserEdits extends StatefulWidget {
  const ManageUserEdits({ Key? key }) : super(key: key);

  @override
  _ManageUserEditsState createState() => _ManageUserEditsState();
}

class _ManageUserEditsState extends State<ManageUserEdits> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     
                             Padding(
                        padding:EdgeInsets.only(bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Name:',style: TextStyle(color: theme.darkTextColor,fontSize: 13,fontWeight: FontWeight.w500,
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
                        padding:EdgeInsets.only(bottom: 20),
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
                        padding: const EdgeInsets.only(right: 213,bottom: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [Container(
                            height: 20,width: 20,color: theme.lightTextColor,
                            child: Icon(Icons.done,color:theme.mainColor,size: 15 ,),
                          ),SizedBox(width: 10,),
                           Text('Email confirmed',style: TextStyle(color: theme.darkTextColor,fontSize: 12,fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none
                            ),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 191,bottom: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [Container(
                            height: 20,width: 20,color: theme.lightTextColor,
                            child: Icon(Icons.done,color:theme.mainColor,size: 15 ,),
                          ),SizedBox(width: 10,),
                           Text('Email not confirmed',style: TextStyle(color: theme.darkTextColor,fontSize: 12,fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none
                            ),)
                          ],
                        ),
                      ),
                      Padding(
                        padding:EdgeInsets.only(right: 183,bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center, 
                          children: [
                            Text('Subscription payment expiration date:',style: TextStyle(color: theme.darkTextColor,fontSize: 13,fontWeight: FontWeight.w500,
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
                      SizedBox(height: 20,),
                      Container(alignment: Alignment.center,margin: EdgeInsets.only(right: 100,bottom: 50),
                              padding: EdgeInsets.symmetric(horizontal: 10),height: 40,
                                    width: 110,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                      color:theme.mainColor
                                    ),child:  Text('Save',style: TextStyle(color: theme.whiteColor,fontSize: 13.5,fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none
                              ),
                                    ),
                            
                            ),
                          
                            
                    ],
                  ),
    );
  }
}