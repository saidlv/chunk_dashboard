import 'package:chunk_dashboard/theme/theme.dart';
import 'package:flutter/material.dart';

class TrueFalse extends StatefulWidget {
  const TrueFalse({ Key? key }) : super(key: key);

  @override
  _TrueFalseState createState() => _TrueFalseState();
}

class _TrueFalseState extends State<TrueFalse> {
 
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Question:',style:TextStyle(color: theme.darkTextColor,fontSize: 11.5) ,),
      SizedBox(height: 3,),
      Container(alignment: Alignment.centerLeft,
                              padding: EdgeInsets.symmetric(horizontal: 10)
                            ,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                color: theme.whiteColor
                              ),child: TextField(maxLines: 5,
                                style:  TextStyle(color: theme.darkTextColor,fontSize: 12,fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none,
                            ),
                                decoration: InputDecoration(isDense: true,
                                  border: InputBorder.none,
                                 
                                ),
                              ),
                            ), SizedBox(height: 13,),
                          
                             questionType(),
                            SizedBox(height: 15,),
                             optionalComment()
    ],
      
    );
  }
  Widget questionType(){
    return Align(alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(bottom: 10,right: 50,left: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
          Container(alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10)
                                ,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                    color: theme.whiteColor
                                  ),child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Question Type:',style:TextStyle(color: theme.darkTextColor,fontSize: 11.5) ,),
                                      SizedBox(height: 15,),
                                       Row(
                                  children: [
                                      Row(
                                   children: [
                                      Row(
                              children: [Container(
                                height: 13,width: 13,padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(color: theme.lightTextColor,
                                  shape: BoxShape.circle
                                ),child: Container(
                                  decoration: BoxDecoration(
    color: theme.darkTextColor,
                                  shape: BoxShape.circle
                                  ),
                                ),
                              
                              ),SizedBox(width: 5,),
                               Text('True/False',style: TextStyle(color: theme.darkTextColor,fontSize: 10.5,fontWeight: FontWeight.w500,
                                decoration: TextDecoration.none
                                ),)
                              ],
                            ),SizedBox(width: 10,),
                                     Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [Container(
                                height: 13,width: 13,color: theme.lightTextColor,
                                child: Icon(Icons.done,color:theme.mainColor,size: 12 ,),
                              ),SizedBox(width: 5,),
                               Text('True',style: TextStyle(color: theme.darkTextColor,fontSize: 10.5,fontWeight: FontWeight.w500,
                                decoration: TextDecoration.none
                                ),)
                              ],
                            ),SizedBox(width: 10,),
                                     Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [Container(
                                height: 13,width: 13,color: theme.lightTextColor,
                                // child: Icon(Icons.done,color:theme.mainColor,size: 12 ,),
                              ),SizedBox(width: 5,),
                               Text('False',style: TextStyle(color: theme.darkTextColor,fontSize: 10.5,fontWeight: FontWeight.w500,
                                decoration: TextDecoration.none
                                ),)
                              ],
                            ),
                                   ],
                                 ),
                                  ],
                                ), SizedBox(height: 15,),
                                       Row(
                                  children: [
                                      Row(
                                   children: [
                                      Row(
                              children: [Container(
                                height: 13,width: 13,padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(color: theme.lightTextColor,
                                  shape: BoxShape.circle
                                ),child: Container(
                                  decoration: BoxDecoration(
    color: theme.darkTextColor,
                                  shape: BoxShape.circle
                                  ),
                                ),
                              
                              ),SizedBox(width: 5,),
                               Text('Yes/No',style: TextStyle(color: theme.darkTextColor,fontSize: 10.5,fontWeight: FontWeight.w500,
                                decoration: TextDecoration.none
                                ),)
                              ],
                            ),SizedBox(width: 25,),
                                     Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [Container(
                                height: 13,width: 13,color: theme.lightTextColor,
                                child: Icon(Icons.done,color:theme.mainColor,size: 12 ,),
                              ),SizedBox(width: 5,),
                               Text('Yes',style: TextStyle(color: theme.darkTextColor,fontSize: 10.5,fontWeight: FontWeight.w500,
                                decoration: TextDecoration.none
                                ),)
                              ],
                            ),SizedBox(width: 14,),
                                     Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [Container(
                                height: 13,width: 13,color: theme.lightTextColor,
                                // child: Icon(Icons.done,color:theme.mainColor,size: 12 ,),
                              ),SizedBox(width: 5,),
                               Text('No',style: TextStyle(color: theme.darkTextColor,fontSize: 10.5,fontWeight: FontWeight.w500,
                                decoration: TextDecoration.none
                                ),)
                              ],
                            ),
                                   ],
                                 ),
                                  ],
                                )
                                    ],
                                  )
                                ),SizedBox(height: 8,),
                               
          ],
        ),
      ),
    );
  }

   Widget optionalComment(){
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
                                 children: [
                                   Text('Add Comment (optional)',style:TextStyle(color: theme.darkTextColor,fontSize: 11.5) ,),SizedBox(width: 10,),
                                   Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [Container(
                              height: 13,width: 13,color: theme.lightTextColor,
                              child: Icon(Icons.done,color:theme.mainColor,size: 12 ,),
                            ),SizedBox(width: 5,),
                             Text('by correct',style: TextStyle(color: theme.darkTextColor,fontSize: 10.5,fontWeight: FontWeight.w500,
                              decoration: TextDecoration.none
                              ),)
                            ],
                          ),SizedBox(width: 10,),
                                   Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [Container(
                              height: 13,width: 13,color: theme.lightTextColor,
                              // child: Icon(Icons.done,color:theme.mainColor,size: 12 ,),
                            ),SizedBox(width: 5,),
                             Text('by false',style: TextStyle(color: theme.darkTextColor,fontSize: 10.5,fontWeight: FontWeight.w500,
                              decoration: TextDecoration.none
                              ),)
                            ],
                          ),
                                 ],
                               ),
        SizedBox(height: 3,),
        Container(alignment: Alignment.centerLeft,
                                padding: EdgeInsets.symmetric(horizontal: 10)
                              ,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                  color: theme.whiteColor
                                ),child: TextField(maxLines: 4,
                                  style:  TextStyle(color: theme.darkTextColor,fontSize: 12,fontWeight: FontWeight.w500,
                              decoration: TextDecoration.none,
                              ),
                                  decoration: InputDecoration(isDense: true,
                                    border: InputBorder.none,
                                   
                                  ),
                                ),
                              )
        ],
      ),
    );
  }

  
}