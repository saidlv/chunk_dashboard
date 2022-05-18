
import 'package:chunk_dashboard/theme/theme.dart';
import 'package:flutter/material.dart';

class Transitions extends StatefulWidget {
  const Transitions({ Key? key }) : super(key: key);

  @override
  State<Transitions> createState() => _TransitionsState();
}

class _TransitionsState extends State<Transitions> {
 
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    SizedBox(height: 150,width: 300,
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
 Container(alignment: Alignment.center,
   margin: EdgeInsets.only(bottom: 15),
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 9),decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                      color:theme.mainColor
                                    ),child:  Text('Upload GIF or Json Lottie File',style: TextStyle(color: theme.whiteColor,fontSize: 12.5,fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none
                              ),
                                    ),
                            
                            ),
                            Padding(
                        padding: const EdgeInsets.only(left:5,bottom: 8),
                        child: Row(
                          children: [Container(
                            height: 15,width: 15,color: theme.lightTextColor,
                            child: Icon(Icons.done,color:theme.mainColor,size: 14,),
                          ),SizedBox(width: 10,),
                           Text('All but first and last stations',style: TextStyle(color: theme.darkTextColor,fontSize: 11.5,fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none
                            ),)
                          ],
                        ),
                      ), Padding(
                        padding: const EdgeInsets.only(left:5,bottom: 8),
                        child: Row(
                          children: [Container(
                            height: 15,width: 15,color: theme.lightTextColor,
                            child: Icon(Icons.done,color:theme.mainColor,size: 14,),
                          ),SizedBox(width: 10,),
                           Text('First station',style: TextStyle(color: theme.darkTextColor,fontSize: 11.5,fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none
                            ),)
                          ],
                        ),
                      ),Padding(
                        padding: const EdgeInsets.only(left:5,bottom: 8),
                        child: Row(
                          children: [Container(
                            height: 15,width: 15,color: theme.lightTextColor,
                            child: Icon(Icons.done,color:theme.mainColor,size: 14,),
                          ),SizedBox(width: 10,),
                           Text('Last station',style: TextStyle(color: theme.darkTextColor,fontSize: 11.5,fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none
                            ),)
                          ],
                        ),
                      ), 
                      ],
                    ),
                    ),
                           SizedBox(height: 50,),
                     
                              Align(alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 100,right: 100),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                                        padding: const EdgeInsets.only(right: 420,bottom: 20),
                                                        child: Text('Recently uploaded:',style: TextStyle(color: theme.darkTextColor,fontSize: 13,fontWeight: FontWeight.w500,
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
                                        child: Text('File type',style:TextStyle(color: theme.darkTextColor,fontSize: 13) ,),
                                      )),
                                       TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Station',style:TextStyle(color: theme.darkTextColor,fontSize: 13) ,),
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
                                        child: Text('Clapping',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                      )),
                                       TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Json',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                      )),
                                       TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('All but',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
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
                                        child: Text('Motivational',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                      )),
                                       TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('GIF',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                      )),
                                       TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('All but',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
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