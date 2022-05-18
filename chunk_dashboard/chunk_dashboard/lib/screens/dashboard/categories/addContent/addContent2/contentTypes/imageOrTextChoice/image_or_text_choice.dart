import 'package:chunk_dashboard/theme/theme.dart';
import 'package:flutter/material.dart';

class ImageOrTextChoice extends StatefulWidget {
  const ImageOrTextChoice({ Key? key }) : super(key: key);

  @override
  _ImageOrTextChoiceState createState() => _ImageOrTextChoiceState();
}

class _ImageOrTextChoiceState extends State<ImageOrTextChoice> {
 
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Text/Question',style:TextStyle(color: theme.darkTextColor,fontSize: 11.5) ,),
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
                          Row(
                            children: [
                              dragOrUploadCorrectImages(),
                               SizedBox(width: 20,),
                               dragOrUploadFalseImages()
                            ],
                          ),
                          
                            SizedBox(height: 15,),
                            addCorrectOptions(),
                            SizedBox(height: 15,),
                             addFalseOptions(),
                            SizedBox(height: 15,),
                             Row(
                                 children: [
                                   Text('Checking',style:TextStyle(color: theme.darkTextColor,fontSize: 11.5) ,),SizedBox(width: 10,),
                                   Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [Container(
                              height: 13,width: 13,color: theme.lightTextColor,
                              child: Icon(Icons.done,color:theme.mainColor,size: 12 ,),
                            ),SizedBox(width: 5,),
                             Text('while checking',style: TextStyle(color: theme.darkTextColor,fontSize: 10.5,fontWeight: FontWeight.w500,
                              decoration: TextDecoration.none
                              ),)
                            ],
                          ),SizedBox(width: 10,),
                                   Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [Container(
                              height: 13,width: 13,color: theme.lightTextColor,
                              // child: Icon(Icons.done,color:theme.mainColor,size: 12 ,),
                            ),SizedBox(width: 5,),
                             Text('at the end',style: TextStyle(color: theme.darkTextColor,fontSize: 10.5,fontWeight: FontWeight.w500,
                              decoration: TextDecoration.none
                              ),)
                            ],
                          ),
                                 ],
                               ), SizedBox(height: 15,),
                             optionalComment()
    ],
      
    );
  }

  Widget dragOrUploadCorrectImages(){
    return Container(height: 150,width: 150,color: Colors.green.shade600,alignment: Alignment.center,
    padding: EdgeInsets.symmetric(horizontal: 10),
    child:  Text('Upload or drag and drop correct images',textAlign: TextAlign.center,
    style:TextStyle(color: Colors.white,fontSize: 11.5) ,),
       
    );
  }
   Widget dragOrUploadFalseImages(){
    return Container(height: 150,width: 150,color: Colors.red.shade600,alignment: Alignment.center,
    padding: EdgeInsets.symmetric(horizontal: 10),
    child:  Text('Upload or drag and drop false images',textAlign: TextAlign.center,
    style:TextStyle(color: Colors.white,fontSize: 11.5) ,),
       
    );
  }
 

   Widget addCorrectOptions(){
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Add correct options',style:TextStyle(color: Colors.green.shade600,fontSize: 11.5) ,),SizedBox(width: 10,),
        SizedBox(height: 3,),
        Container(alignment: Alignment.centerLeft,
                                padding: EdgeInsets.symmetric(horizontal: 10)
                              ,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                  color: theme.whiteColor
                                ),child: TextField(maxLines: 4,
                                  style:  TextStyle(color:theme.darkTextColor,fontSize: 12,fontWeight: FontWeight.w500,
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
    Widget addFalseOptions(){
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Add false options',style:TextStyle(color: Colors.red.shade600,fontSize: 11.5) ,),SizedBox(width: 10,),
        SizedBox(height: 3,),
        Container(alignment: Alignment.centerLeft,
                                padding: EdgeInsets.symmetric(horizontal: 10)
                              ,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                  color: theme.whiteColor
                                ),child: TextField(maxLines: 4,
                                  style:  TextStyle(color:theme.darkTextColor,fontSize: 12,fontWeight: FontWeight.w500,
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