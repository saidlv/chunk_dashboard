
import 'package:chunk_dashboard/theme/theme.dart';
import 'package:flutter/material.dart';

class Access extends StatefulWidget {
  const Access({ Key? key }) : super(key: key);

  @override
  State<Access> createState() => _AccessState();
}

class _AccessState extends State<Access> {
  String? selectedMainCategory;
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
                        padding:EdgeInsets.only(bottom: 20,right: 26),
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
                        padding:EdgeInsets.only(bottom: 20,right: 71),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Repeat Password:',style: TextStyle(color: theme.darkTextColor,fontSize: 13,fontWeight: FontWeight.w500,
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
                      padding:EdgeInsets.only(bottom: 10,right: 252),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [ Text('Access to Main Category:',style: TextStyle(color: theme.darkTextColor,fontSize: 13,fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none
                            ),
                            ),SizedBox(width: 20,),
                          Container(alignment: Alignment.centerLeft,
                              padding: EdgeInsets.symmetric(horizontal: 10),height: 40,
                              width: 250,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                color: theme.whiteColor
                              ),child: DropdownButtonHideUnderline(
                                child: DropdownButton(iconEnabledColor: theme.mainColor,
                                  value: selectedMainCategory,hint: Text('Select Category',style: TextStyle(
                                    color: theme.darkTextColor.withOpacity(.6),fontSize: 12,fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none
                                  ),),
                                  isExpanded: true,
                                  style:TextStyle(color: theme.darkTextColor,fontSize: 12,fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none
                            ) ,
                                  onChanged:(value) {
                                  setState(() {
                                    selectedMainCategory=value.toString();
                                  });
                                } ,
                                  items: [
                                  DropdownMenuItem(value: 'Main Category 1',
                                    child: Text('Main Category 1')), DropdownMenuItem(value: 'Main Category 2',
                                    child: Text('Main Category 2')), DropdownMenuItem(value: 'Main Category 3',
                                    child: Text('Main Category 3')), DropdownMenuItem(value: 'Main Category 4',
                                    child: Text('Main Category 4')),
                                ], ),
                              )
                            ),
                        ],
                      ),
                    ),
                       SizedBox(height: 20,),
                      Container(alignment: Alignment.center,margin: EdgeInsets.only(right: 100,bottom: 50),
                              padding: EdgeInsets.symmetric(horizontal: 10),height: 40,
                                    width: 140,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                      color:theme.mainColor
                                    ),child:  Text('Give Access',style: TextStyle(color: theme.whiteColor,fontSize: 13.5,fontWeight: FontWeight.w400,
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
                                                        child: Text('Recently Added Admins:',style: TextStyle(color: theme.mainColor,fontSize: 13,fontWeight: FontWeight.w500,
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
                                        child: Text('Name',style:TextStyle(color: theme.darkTextColor,fontSize: 13) ,),
                                      )),
                                       TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Main Category',style:TextStyle(color: theme.darkTextColor,fontSize: 13) ,),
                                      )),
                                       TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('',style:TextStyle(color: theme.darkTextColor,fontSize: 13) ,),
                                      )),
                                      TableCell(
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
                                        child: Text('Anna',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                      )),
                                       TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Mathematics',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                      )),
                                    
                                      TableCell(
                                      child: GestureDetector(
                                         onTap: () {
                                      
                                      },
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('Edit',style:TextStyle(color: theme.darkTextColor.withOpacity(.8),fontSize: 11,fontWeight:FontWeight.w600 ) ,),
                                        ),
                                      )),
                                       TableCell(
                                      child: GestureDetector(
                                         onTap: () {
                                      
                                      },
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('Delete',style:TextStyle(color: theme.darkTextColor.withOpacity(.8),fontSize: 11,fontWeight:FontWeight.w600 ) ,),
                                        ),
                                      )),
                                    
                                  ] ),
                                   TableRow(
                                  children:[
                                  
                                       TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Sarah',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                      )),
                                       TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Physics',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                      )),
                                    
                                      TableCell(
                                      child: GestureDetector(
                                         onTap: () {
                                      
                                      },
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('Edit',style:TextStyle(color: theme.darkTextColor.withOpacity(.8),fontSize: 11,fontWeight:FontWeight.w600 ) ,),
                                        ),
                                      )),
                                       TableCell(
                                      child: GestureDetector(
                                         onTap: () {
                                      
                                      },
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('Delete',style:TextStyle(color: theme.darkTextColor.withOpacity(.8),fontSize: 11,fontWeight:FontWeight.w600 ) ,),
                                        ),
                                      )),
                                    
                                  ] ),
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