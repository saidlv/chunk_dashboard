
import 'package:chunk_dashboard/theme/theme.dart';
import 'package:flutter/material.dart';

class PaymentHistory extends StatefulWidget {
  const PaymentHistory({ Key? key }) : super(key: key);

  @override
  State<PaymentHistory> createState() => _PaymentHistoryState();
}

class _PaymentHistoryState extends State<PaymentHistory> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     
                             Padding(
                        padding:EdgeInsets.only(bottom: 20,right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('From:',style: TextStyle(color: theme.darkTextColor,fontSize: 13,fontWeight: FontWeight.w500,
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
                            Text('To:',style: TextStyle(color: theme.darkTextColor,fontSize: 13,fontWeight: FontWeight.w500,
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
                                    width: 150,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                      color:theme.mainColor
                                    ),child:  Text('List Payments',style: TextStyle(color: theme.whiteColor,fontSize: 13.5,fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none
                              ),
                                    ),
                            
                            ),
                              Align(alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 100,right: 100),
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
                                        child: Text('Email',style:TextStyle(color: theme.darkTextColor,fontSize: 13) ,),
                                      )),
                                       TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Payment day',style:TextStyle(color: theme.darkTextColor,fontSize: 13) ,),
                                      )),
                                      TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Payment amount (€)',style:TextStyle(color: theme.darkTextColor,fontSize: 13) ,),
                                      )),
                                       TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Invoice (pdf)',style:TextStyle(color: theme.darkTextColor,fontSize: 13) ,),
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
                                        child: Text('anna@gmail.com',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                      )),
                                       TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('01-03-2022',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                      )),
                                      TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('90,000',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                      )),
                                       TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Invoice',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
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
                                        child: Text('sarah@gmail.com',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                      )),
                                       TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('01-03-2022',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                      )),
                                      TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('90,000',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                      )),
                                       TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Invoice',style:TextStyle(color: theme.darkTextColor,fontSize: 11) ,),
                                      )),
                                    
                                  ] ),
                                  ],
                              ),
                                ),
                              ),
                            
                    ],
                  ),
    );
  }
}