import 'package:chunk_dashboard/theme/theme.dart';
import 'package:flutter/material.dart';

class ImageHotspot extends StatefulWidget {
  const ImageHotspot({ Key? key }) : super(key: key);

  @override
  _ImageHotspotState createState() => _ImageHotspotState();
}

class _ImageHotspotState extends State<ImageHotspot> {
  TextEditingController areasText=TextEditingController();
  bool showAddAreaField=false;
  List<dynamic> areasList=[
    {
      'bodyPart':'Click on the nose',
      'selected':true
    },
    {
      'bodyPart':'Click on the right eye',
      'selected':false
    },
    {
      'bodyPart':'Click on left ear',
      'selected':false
    },
  ];
 @override
  void dispose() {
   areasText.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Define areas:',style:TextStyle(color: theme.darkTextColor,fontSize: 11.5) ,),
      SizedBox(height: 3,),
      for(int i=0;i<areasList.length;i++)
      Padding(
        padding:  EdgeInsets.only(bottom: 10),
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [Text((i+1).toString(),style: TextStyle(color: theme.darkTextColor,fontSize: 11,fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.none
                                  )),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [SizedBox(width: 50,),
                Container(alignment: Alignment.centerLeft,width:MediaQuery.of(context).size.width/4,
                                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10)
                                      ,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                          color: theme.whiteColor
                                        ),child: Text(areasList[i]['bodyPart'],style: TextStyle(color: theme.darkTextColor,fontSize: 10,fontWeight: FontWeight.w500,
                                          decoration: TextDecoration.none
                                          )),
                                      ),
              ],
            ),

                                  
          ],
        ),
      ),
    !showAddAreaField?SizedBox():    Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [SizedBox(width: 57,),
            Container(alignment: Alignment.centerLeft,width:MediaQuery.of(context).size.width/4,
                                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5)
                                    ,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                        color: theme.whiteColor
                                      ),child:  TextField(controller: areasText,
                                  style:  TextStyle(color: theme.darkTextColor,fontSize: 10,fontWeight: FontWeight.w500,
                              decoration: TextDecoration.none,
                              ),
                                  decoration: InputDecoration(isDense: true,
                                    border: InputBorder.none,
                                    hintStyle:  TextStyle(color: theme.darkTextColor.withOpacity(.6),fontSize: 10,fontWeight: FontWeight.w500,
                              decoration: TextDecoration.none,
                              ),hintText: 'Enter name here'
                                   
                                  ),
                                ),
                                    ),
          ],
        ),SizedBox(height: 20,),
      Align(alignment: Alignment.center,
        child: GestureDetector(onTap: () {
                                        setState(() {
                                         showAddAreaField=!showAddAreaField;
                                        });
                                     
                                          if(areasText.text.isNotEmpty){
                                            areasList.add({
                                              'bodyPart':areasText.text,
                                              'selected':false
                                            });
                                          
                                          areasText.clear();
                                        }
                                      },
                                        child: Text(showAddAreaField?'Done':
                                          '+ add more',style: TextStyle(color: theme.mainColor,fontSize: 12,fontWeight: FontWeight.w400,
                                          decoration: TextDecoration.none
                                          ),
                                                ),
                                      ),
      ),
       SizedBox(height: 25,),
                              Container(height: 1,color: theme.lightTextColor,margin: EdgeInsets.symmetric(horizontal: 20),
                              ),
                              SizedBox(height: 15,),
                              Align(alignment: Alignment.center,child:Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: Container(
          padding: EdgeInsets.all(6),decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),color: Colors.white,),
          child:  Text('Upload Image',style: TextStyle(color: theme.darkTextColor,fontSize: 10.5,fontWeight: FontWeight.w500,
                                decoration: TextDecoration.none
                                ),)
        )
          
      ),),
                         
                            imageBox(),
                            SizedBox(height: 15,),
                             optionalComment()
    ],
      
    );
  }
  Widget imageBox(){
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text('Add "area hotspots" based on the area numbers above:',style:TextStyle(color: theme.darkTextColor,fontSize: 11.5) ,),
        SizedBox(height: 3,),
        Container(alignment: Alignment.centerLeft
                              ,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                 color: theme.lightTextColor
                                ),child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        for(int i=0;i<areasList.length;i++)
                                        Padding(
                                              padding: EdgeInsets.only(bottom: 5),
                                              child: GestureDetector(onTap: () {
                                          setState(() {
                                            areasList[i]['selected']=true;
                                            areasList.forEach((element) { 
                                               if(element['bodyPart']==areasList[i]['bodyPart']){
      
                  }else{
                    element['selected']=false;
                  }
                                            });
                                          });
                                        },
                                                child: Container(margin: EdgeInsets.only(left: 10),
                                                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 6),decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),color:areasList[i]['selected']? theme.whiteColor: Colors.white.withOpacity(.5),),
                                                  child:  Text((i+1).toString(),style: TextStyle(color: theme.darkTextColor,fontSize: 10.5,fontWeight: FontWeight.w500,
                                                                        decoration: TextDecoration.none
                                                                        ),)
                                                ),
                                              )
                                                
                                            )
                                      ],
                                    ),
                                    Divider(color:Colors.white ,thickness: .3,),
                                     Row(
                                      children: [
                                        for(int i=0;i<3;i++)
                                        Padding(
                                              padding: EdgeInsets.only(bottom: 5,left: 15),
                                              child: Image.asset('assets/${i==0?'rectangle':i==1?'triangle':'circle'}.png',color:theme.darkTextColor ,height: 26,width: 26,)
                                                
                                            )
                                      ],
                                    ),  Divider(color:Colors.white ,thickness: .3,),SizedBox(height: 20,),
                                    Center(
                                      child: Container(height: 200,width:200,color: theme.lightTextColor.withOpacity(.6),
                                      child: Center(child: Image.asset('assets/animal_image.png',height: 130,width: 130,)),
                                      ),
                                    ),
                                  ],
                                )
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