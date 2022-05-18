import 'package:chunk_dashboard/theme/theme.dart';
import 'package:flutter/material.dart';

class DragToCategory extends StatefulWidget {
  const DragToCategory({ Key? key }) : super(key: key);

  @override
  _DragToCategoryState createState() => _DragToCategoryState();
}

class _DragToCategoryState extends State<DragToCategory> {
 
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Task Description:',style:TextStyle(color: theme.darkTextColor,fontSize: 11.5) ,),
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
                            ), SizedBox(height: 25,),
                              Container(height: 1,color: theme.lightTextColor,margin: EdgeInsets.symmetric(horizontal: 20),
                              ),
                              SizedBox(height: 15,),
                            for(int i=1;i<5;i++)
                             categories(i),
                            SizedBox(height: 15,),
                             optionalComment()
    ],
      
    );
  }
  Widget categories(i){
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Row(
             children: [
               Text(i==1?'First Category:':i==2?'Second Category:':i==3?'Third Category:':i==4?'Fourth Category:':'',style:TextStyle(color: theme.darkTextColor,fontSize: 11.5) ,),SizedBox(width: 15,),
               Container(height: 26,width: 150,color: Colors.white,)
             ],
           ),
        SizedBox(height: 3,),
        Container(alignment: Alignment.centerLeft,
                                padding: EdgeInsets.symmetric(horizontal: 10)
                              ,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                  color: theme.whiteColor
                                ),child: TextField(maxLines: 3,
                                  style:  TextStyle(color: theme.darkTextColor,fontSize: 12,fontWeight: FontWeight.w500,
                              decoration: TextDecoration.none,
                              ),
                                  decoration: InputDecoration(isDense: true,
                                    border: InputBorder.none,
                                   
                                  ),
                                ),
                              ),
                             
                             SizedBox(height: 25,),
                              Container(height: 1,color: theme.lightTextColor,margin: EdgeInsets.symmetric(horizontal: 20),
                              ),
                              SizedBox(height: 15,),
        ],
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