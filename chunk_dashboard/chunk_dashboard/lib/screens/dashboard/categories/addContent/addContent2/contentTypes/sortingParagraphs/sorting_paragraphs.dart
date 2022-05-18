import 'package:chunk_dashboard/theme/theme.dart';
import 'package:flutter/material.dart';

class SortingParagraphs extends StatefulWidget {
  const SortingParagraphs({ Key? key }) : super(key: key);

  @override
  _SortingParagraphsState createState() => _SortingParagraphsState();
}

class _SortingParagraphsState extends State<SortingParagraphs> {
  int numberOfParagraphss=3;

  List<dynamic> listOfParagraphs=[
    {
      'content':'This is paragraph',
      'key':1
    }, {
      'content':'This is paragraph',
      'key':2
    }, {
      'content':'This is paragraph',
      'key':3
    }
  ];
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
                            ), SizedBox(height: 13,),
                            ReorderableListView(shrinkWrap: true,buildDefaultDragHandles: false,
                              onReorder: (oldIndex, newIndex) {
                              setState(() {
                                if(newIndex>oldIndex){
                                  newIndex-=1;
                                }
                            final item=    listOfParagraphs.removeAt(oldIndex);
                                listOfParagraphs.insert(newIndex, item);
                              });
                            },
                              children: [
                              for(int i=0;i<numberOfParagraphss;i++)
                             ReorderableDragStartListener(index: i,key:ValueKey(listOfParagraphs[i]['key'].toString()),
                               child: paragraph(i)),
                            ], ),
                             Align(alignment: Alignment.center,
                               child: GestureDetector(onTap: () {
                                 setState(() {
                                   numberOfParagraphss=numberOfParagraphss+1;
                                   listOfParagraphs.add({
                                     'content':"paragraph 4",
                                     'key':numberOfParagraphss
                                   });
                                 });
                               },
                                 child: Text('+ add paragraph',style: TextStyle(color: theme.mainColor,fontSize: 12,fontWeight: FontWeight.w400,
                                                  decoration: TextDecoration.none
                                                  ),
                                                        ),
                               ),
                             ),SizedBox(height: 15,),
                             optionalComment()
    ],
      
    );
  }
  Widget paragraph(i){
    return Padding( 
      padding: EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Paragraph ${listOfParagraphs[i]['key']}:',style:TextStyle(color: theme.darkTextColor,fontSize: 11.5) ,),SizedBox(width: 10,),
        SizedBox(height: 3,),
        Container( 
          alignment: Alignment.centerLeft,
                                padding: EdgeInsets.symmetric(horizontal: 10)
                              ,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                  color: theme.whiteColor
                                ),child: TextField(
                                  maxLines: 4,
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