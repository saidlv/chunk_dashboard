import 'package:chunk_dashboard/theme/theme.dart';
import 'package:flutter/material.dart';

class ManageComments extends StatefulWidget {
  const ManageComments({ Key? key }) : super(key: key);

  @override
  _ManageCommentsState createState() => _ManageCommentsState();
}

class _ManageCommentsState extends State<ManageComments> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     
                            SizedBox(width: 600,
                              child: Table(
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
                                    child: Text('Comment Date',style:TextStyle(color: theme.darkTextColor,fontSize: 13) ,),
                                  )),
                                   TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('',style:TextStyle(color: theme.darkTextColor,fontSize: 13) ,),
                                  )),
                                  
                                
                              ] ),
                               TableRow(
                              children:[
                                
                                   TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Mike',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                  )),
                                
                                   TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('12-5-2021',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                  )),
                                 
                                  TableCell(
                                  child: GestureDetector(
                                     onTap: () {
                                  
                                  },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Text('Show Comment',style:TextStyle(color: theme.darkTextColor.withOpacity(.8),fontSize: 11,fontWeight:FontWeight.w600 ) ,),
                                          SizedBox(height: 5,),
                                           Text('Edit card',style:TextStyle(color: theme.darkTextColor.withOpacity(.8),fontSize: 11,fontWeight:FontWeight.w600 ) ,),
                                        ],
                                      ),
                                    ),
                                  )),
                                
                              ] ),
                               TableRow(
                              children:[
                                
                                   TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Mike',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                  )),
                                
                                   TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('12-5-2021',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                  )),
                                 
                                  TableCell(
                                  child: GestureDetector(
                                     onTap: () {
                                  
                                  },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Text('Show Comment',style:TextStyle(color: theme.darkTextColor.withOpacity(.8),fontSize: 11,fontWeight:FontWeight.w600 ) ,),
                                          SizedBox(height: 5,),
                                           Text('Edit card',style:TextStyle(color: theme.darkTextColor.withOpacity(.8),fontSize: 11,fontWeight:FontWeight.w600 ) ,),
                                        ],
                                      ),
                                    ),
                                  )),
                                
                              ] ),
                               TableRow(
                              children:[
                                
                                   TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Mike',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                  )),
                                
                                   TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('12-5-2021',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                  )),
                                 
                                  TableCell(
                                  child: GestureDetector(
                                     onTap: () {
                                  
                                  },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Text('Show Comment',style:TextStyle(color: theme.darkTextColor.withOpacity(.8),fontSize: 11,fontWeight:FontWeight.w600 ) ,),
                                          SizedBox(height: 5,),
                                           Text('Edit card',style:TextStyle(color: theme.darkTextColor.withOpacity(.8),fontSize: 11,fontWeight:FontWeight.w600 ) ,),
                                        ],
                                      ),
                                    ),
                                  )),
                                
                              ] ),
                               TableRow(
                              children:[
                                
                                   TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Mike',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                  )),
                                
                                   TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('12-5-2021',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                  )),
                                 
                                  TableCell(
                                  child: GestureDetector(
                                     onTap: () {
                                  
                                  },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Text('Show Comment',style:TextStyle(color: theme.darkTextColor.withOpacity(.8),fontSize: 11,fontWeight:FontWeight.w600 ) ,),
                                          SizedBox(height: 5,),
                                           Text('Edit card',style:TextStyle(color: theme.darkTextColor.withOpacity(.8),fontSize: 11,fontWeight:FontWeight.w600 ) ,),
                                        ],
                                      ),
                                    ),
                                  )),
                                
                              ] ),
                               TableRow(
                              children:[
                                
                                   TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Mike',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                  )),
                                
                                   TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('12-5-2021',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                  )),
                                 
                                  TableCell(
                                  child: GestureDetector(
                                     onTap: () {
                                  
                                  },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Text('Show Comment',style:TextStyle(color: theme.darkTextColor.withOpacity(.8),fontSize: 11,fontWeight:FontWeight.w600 ) ,),
                                          SizedBox(height: 5,),
                                           Text('Edit card',style:TextStyle(color: theme.darkTextColor.withOpacity(.8),fontSize: 11,fontWeight:FontWeight.w600 ) ,),
                                        ],
                                      ),
                                    ),
                                  )),
                                
                              ] ),
                              ],
                              ),
                            ),
                            
                    ],
                  ),
    );
  }
}