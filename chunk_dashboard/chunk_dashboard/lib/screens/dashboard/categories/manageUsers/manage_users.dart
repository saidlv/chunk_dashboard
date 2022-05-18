
import 'package:chunk_dashboard/theme/theme.dart';
import 'package:flutter/material.dart';

import 'manageUserEdits/manage_user_edits.dart';

class ManageUsers extends StatefulWidget {
  const ManageUsers({ Key? key }) : super(key: key);

  @override
  State<ManageUsers> createState() => _ManageUsersState();
}

class _ManageUsersState extends State<ManageUsers> {
  bool showManageUserEdit=false;
  @override
  Widget build(BuildContext context) {
    return showManageUserEdit?ManageUserEdits(): SingleChildScrollView(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 450,bottom: 20),
                        child: Text('Filter:',style: TextStyle(color: theme.darkTextColor,fontSize: 13,fontWeight: FontWeight.w500,
                              decoration: TextDecoration.none
                              ),),
                      ),
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
                      ), Padding(
                        padding: const EdgeInsets.only(right: 215,bottom: 20),
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
                      ),Padding(
                        padding: const EdgeInsets.only(right: 164,bottom: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [Container(
                            height: 20,width: 20,color: theme.lightTextColor,
                            child: Icon(Icons.done,color:theme.mainColor,size: 15 ,),
                          ),SizedBox(width: 10,),
                           Text('Subscribers with payment',style: TextStyle(color: theme.darkTextColor,fontSize: 12,fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none
                            ),)
                          ],
                        ),
                      ),SizedBox(height: 20,),
                      Container(alignment: Alignment.center,margin: EdgeInsets.only(right: 100,bottom: 50),
                              padding: EdgeInsets.symmetric(horizontal: 10),height: 40,
                                    width: 110,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                      color:theme.mainColor
                                    ),child:  Text('Search',style: TextStyle(color: theme.whiteColor,fontSize: 13.5,fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none
                              ),
                                    ),
                            
                            ),
                              Align(alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 100,right: 100),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                                        padding: const EdgeInsets.only(right: 420,bottom: 20),
                                                        child: Text('All Users:',style: TextStyle(color: theme.darkTextColor,fontSize: 13,fontWeight: FontWeight.w500,
                                      decoration: TextDecoration.none
                                      ),),
                                                      ),
                                                        Table(
                                border: TableBorder.all(color: theme.lightTextColor,),
                                children: [
                                  TableRow(
                                  children:[
                                    TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('ID',style:TextStyle(color: theme.darkTextColor,fontSize: 13) ,),
                                      )),
                                       TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Name',style:TextStyle(color: theme.darkTextColor,fontSize: 13) ,),
                                      )),
                                       TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Email',style:TextStyle(color: theme.darkTextColor,fontSize: 13) ,),
                                      )),
                                       TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Email Confirmed',style:TextStyle(color: theme.darkTextColor,fontSize: 13) ,),
                                      )),
                                       TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Registration Date',style:TextStyle(color: theme.darkTextColor,fontSize: 13) ,),
                                      )),
                                       TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Payment Expiration',style:TextStyle(color: theme.darkTextColor,fontSize: 13) ,),
                                      )),TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                      )),
                                    
                                  ] ),
                                   TableRow(
                                  children:[
                                    TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('2341',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                      )),
                                       TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Mike',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                      )),
                                       TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('mike@gmail.com',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                      )),
                                       TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('confirmed',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                      )),
                                       TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('12-5-2021',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                      )),
                                       TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('04-8-2022',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                      )),
                                      TableCell(
                                      child: GestureDetector(
                                         onTap: () {
                                        setState(() {
                                          showManageUserEdit=true;
                                        });
                                      },
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('Edit',style:TextStyle(color: theme.darkTextColor.withOpacity(.8),fontSize: 11,fontWeight:FontWeight.w600 ) ,),
                                        ),
                                      )),
                                    
                                  ] ),
                                   TableRow(
                                  children:[
                                    TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('2341',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                      )),
                                       TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Mike',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                      )),
                                       TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('mike@gmail.com',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                      )),
                                       TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('confirmed',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                      )),
                                       TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('12-5-2021',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                      )),
                                       TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('04-8-2022',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                      )),
                                      TableCell(
                                      child: GestureDetector(
                                        onTap: () {
                                        setState(() {
                                          showManageUserEdit=true;
                                        });
                                      },
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('Edit',style:TextStyle(color: theme.darkTextColor.withOpacity(.8),fontSize: 11,fontWeight:FontWeight.w600 ) ,),
                                        ),
                                      )),
                                    
                                  ] )
                                  ],
                              )
                                    ],
                                  ),
                                ),
                              ),
                            
                    ],
                  ),
    );
  }
}