import 'dart:html';

import 'package:chunk_dashboard/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:image_picker_web/image_picker_web.dart';

class ImageDrawLines extends StatefulWidget {
  const ImageDrawLines({ Key? key }) : super(key: key);

  @override
  _ImageDrawLinesState createState() => _ImageDrawLinesState();
}

class _ImageDrawLinesState extends State<ImageDrawLines> {
  TextEditingController areasText=TextEditingController();
  Image? imageWidget;
  bool showAddAreaField=false;
  bool linieSelected=true;
bool pfeilSelected=false;
bool keepLinesBySwitching=true;
 Future<void> getImageFromGallery() async {
    var mediaData = await ImagePickerWeb.getImageInfo;

    if (mediaData != null) {
      setState(() {
       imageWidget = Image.memory(mediaData.data!);
      });
    }
  }

  List<dynamic> areasList=[
    {
      'bodyPart':'Link the eyes together',
      'selected':true,
      'linieSelected':true,
      'pfeilSelected':false
    },
    {
      'bodyPart':'Click on the right eye',
      'selected':false,
        'linieSelected':true,
      'pfeilSelected':false
    },
    {
      'bodyPart':'Click on left ear',
      'selected':false,
        'linieSelected':true,
      'pfeilSelected':false
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
      Text('Define Lines/arrows:',style:TextStyle(color: theme.darkTextColor,fontSize: 11.5) ,),
      SizedBox(height: 3,),
      for(int i=0;i<areasList.length;i++)
      Padding(
        padding:  EdgeInsets.only(bottom: 10),
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [Row(
            children: [
              GestureDetector(
                 onTap: () {
                    setState(() {
                        areasList[i]['linieSelected']=true;
                      areasList[i]['pfeilSelected']=false;
                     
                    });
                  },
                child: Row(
                  children: [
                    Container(height: 13,width: 13,padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,border: Border.all(color: theme.lightTextColor)
                    ),child:   Container(decoration: BoxDecoration(color:  areasList[i]['linieSelected']? theme.darkTextColor:Colors.transparent,
                      shape: BoxShape.circle
                    ),),)
                    ,SizedBox(width: 5,),
                    Text('Linie',style: TextStyle(color: theme.darkTextColor,fontSize: 9.5,fontWeight: FontWeight.w500,
                                                decoration: TextDecoration.none
                                                ))
                  ],
                ),
              ),SizedBox(width: 20,),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      areasList[i]['pfeilSelected']=true;
                       areasList[i]['linieSelected']=false;
                    });
                  },
                  child: Row(
                  children: [
                    Container(height: 13,width: 13,padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,border: Border.all(color: theme.lightTextColor)
                    ),child:   Container(decoration: BoxDecoration(color: areasList[i]['pfeilSelected']? theme.darkTextColor:Colors.transparent,
                      shape: BoxShape.circle
                    ),),)
                    ,SizedBox(width: 5,),
                    Text('Pfeil',style: TextStyle(color: theme.darkTextColor,fontSize: 9.5,fontWeight: FontWeight.w500,
                                                decoration: TextDecoration.none
                                                ))
                  ],
                            ),
                ),
            ],
          ),
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
          children: [Row(
          children: [
            GestureDetector(
               onTap: () {
                  setState(() {
                     linieSelected=true;
                     pfeilSelected=false;
                   
                  });
                },
              child: Row(
                children: [
                  Container(height: 13,width: 13,padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,border: Border.all(color: theme.lightTextColor)
                  ),child:   Container(decoration: BoxDecoration(color:  linieSelected? theme.darkTextColor:Colors.transparent,
                    shape: BoxShape.circle
                  ),),)
                  ,SizedBox(width: 5,),
                  Text('Linie',style: TextStyle(color: theme.darkTextColor,fontSize: 9.5,fontWeight: FontWeight.w500,
                                              decoration: TextDecoration.none
                                              ))
                ],
              ),
            ),SizedBox(width: 20,),
              GestureDetector(
                onTap: () {
                  setState(() {
                  pfeilSelected=true;
                  linieSelected=false;
                  });
                },
                child: Row(
                children: [
                  Container(height: 13,width: 13,padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,border: Border.all(color: theme.lightTextColor)
                  ),child:   Container(decoration: BoxDecoration(color: pfeilSelected? theme.darkTextColor:Colors.transparent,
                    shape: BoxShape.circle
                  ),),)
                  ,SizedBox(width: 5,),
                  Text('Pfeil',style: TextStyle(color: theme.darkTextColor,fontSize: 9.5,fontWeight: FontWeight.w500,
                                              decoration: TextDecoration.none
                                              ))
                ],
                          ),
              ),
          ],
        ),SizedBox(width: 50,),
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
                              ),hintText: 'Enter here'
                                   
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
                                              'selected':false,
                                              'linieSelected':linieSelected,
                                              'pfeilSelected':pfeilSelected
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
        child: GestureDetector(onTap: () {
          getImageFromGallery();
        },
          child: Container(
            padding: EdgeInsets.all(6),decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),color: Colors.white,),
            child:  Text('Upload Image',style: TextStyle(color: theme.darkTextColor,fontSize: 10.5,fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.none
                                  ),)
          ),
        )
          
      ),),
 
                         
                            imageBox(),
                            SizedBox(height: 15,),
                            Row(
            children: [
              GestureDetector(
                 onTap: () {
                   setState(() {
                     keepLinesBySwitching=true;
                   });
                  },
                child: Row(
                  children: [
                    Container(height: 15,width: 15,padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,border: Border.all(color: theme.darkTextColor)
                    ),child:   Container(decoration: BoxDecoration(color: keepLinesBySwitching? theme.darkTextColor: Colors.transparent,
                      shape: BoxShape.circle
                    ),),)
                    ,SizedBox(width: 5,),
                    Text('Keep the lines by switching',style: TextStyle(color: theme.darkTextColor,fontSize: 10.5,fontWeight: FontWeight.w500,
                                             decoration: TextDecoration.none
                                             ))
                  ],
                ),
              ),SizedBox(width: 20,),
                GestureDetector(
                 onTap: () {
                   setState(() {
                     keepLinesBySwitching=false;
                   });
                  },
                child: Row(
                  children: [
                    Container(height: 15,width: 15,padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,border: Border.all(color: theme.darkTextColor)
                    ),child:   Container(decoration: BoxDecoration(color:keepLinesBySwitching?  Colors.transparent:theme.darkTextColor,
                      shape: BoxShape.circle
                    ),),)
                    ,SizedBox(width: 5,),
                    Text('Don\'t keep the lines by switching',style: TextStyle(color: theme.darkTextColor,fontSize: 10.5,fontWeight: FontWeight.w500,
                                             decoration: TextDecoration.none
                                             ))
                  ],
                ),
              )
            ],
          ),  SizedBox(height: 30,),
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
                                                  child:  Text(areasList[i]['linieSelected']?'Linie ${(i+1).toString()}':'Pfeil ${(i+1).toString()}',style: TextStyle(color: theme.darkTextColor,fontSize: 10.5,fontWeight: FontWeight.w500,
                                                                        decoration: TextDecoration.none
                                                                        ),)
                                                ),
                                              )
                                                
                                            )
                                      ],
                                    ),
                                    Divider(color:Colors.white ,thickness: .3,),
                                     Padding(
                                           padding: EdgeInsets.only(bottom: 5,left: 15),
                                           child:Row(
            children: [
              GestureDetector(
                 onTap: () {
                   
                  },
                child: Row(
                  children: [
                    Container(height: 14,width: 15,padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,border: Border.all(color: theme.darkTextColor)
                    ),child:   Container(decoration: BoxDecoration(color:  theme.darkTextColor,
                      shape: BoxShape.circle
                    ),),)
                    ,SizedBox(width: 5,),
                    Text('Begin',style: TextStyle(color: theme.darkTextColor,fontSize: 10,fontWeight: FontWeight.w500,
                                             decoration: TextDecoration.none
                                             ))
                  ],
                ),
              ),SizedBox(width: 20,),
                GestureDetector(
                 onTap: () {
                   
                  },
                child: Row(
                  children: [
                    Container(height: 14,width: 15,padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,border: Border.all(color: theme.darkTextColor)
                    ),child:   Container(decoration: BoxDecoration(color:  Colors.transparent,
                      shape: BoxShape.circle
                    ),),)
                    ,SizedBox(width: 5,),
                    Text('End',style: TextStyle(color: theme.darkTextColor,fontSize: 10,fontWeight: FontWeight.w500,
                                             decoration: TextDecoration.none
                                             ))
                  ],
                ),
              )
            ],
          ),
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