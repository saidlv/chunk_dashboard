import 'package:chunk_dashboard/theme/theme.dart';
import 'package:flutter/material.dart';

class Content extends StatefulWidget {
  const Content({ Key? key }) : super(key: key);

  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
 String? selectedMainCategory;
  String? selectedSubCategory;
   String? selectedMainSubjectCategory;
    String? selectedSubjectCategory;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Padding(
                      padding:EdgeInsets.only(bottom: 10),
                      child: Container(alignment: Alignment.centerLeft,
                          padding: EdgeInsets.symmetric(horizontal: 10),height: 40,
                          width: 250,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                            color: theme.whiteColor
                          ),child: DropdownButtonHideUnderline(
                            child: DropdownButton(iconEnabledColor: theme.mainColor,
                              value: selectedMainCategory,hint: Text('Choose Main Category',style: TextStyle(
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
                    ),
                     Padding(
                      padding:EdgeInsets.only(bottom: 10),
                      child: Container(alignment: Alignment.centerLeft,
                         padding: EdgeInsets.symmetric(horizontal: 10),height: 40,
                         width: 250,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                           color: theme.whiteColor
                         ),child: DropdownButtonHideUnderline(
                           child: DropdownButton(iconEnabledColor: theme.mainColor,
                             value: selectedSubCategory,hint: Text('Choose Sub Category',style: TextStyle(
                               color: theme.darkTextColor.withOpacity(.6),fontSize: 12,fontWeight: FontWeight.w500,
                       decoration: TextDecoration.none
                             ),),
                             isExpanded: true,
                             style:TextStyle(color: theme.darkTextColor,fontSize: 12,fontWeight: FontWeight.w500,
                       decoration: TextDecoration.none
                       ) ,
                             onChanged:(value) {
                             setState(() {
                               selectedSubCategory=value.toString();
                             });
                           } ,
                             items: [
                             DropdownMenuItem(value: 'Sub Category 1',
                               child: Text('Sub Category 1')), DropdownMenuItem(value: 'Sub Category 2',
                               child: Text('Sub Category 2')), DropdownMenuItem(value: 'Sub Category 3',
                               child: Text('Sub Category 3')), DropdownMenuItem(value: 'Sub Category 4',
                               child: Text('Sub Category 4')),
                           ], ),
                         )
                       ),
                    ),  Padding(
                      padding:EdgeInsets.only(bottom: 10),
                      child: Container(alignment: Alignment.centerLeft,
                          padding: EdgeInsets.symmetric(horizontal: 10),height: 40,
                          width: 250,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                            color: theme.whiteColor
                          ),child: DropdownButtonHideUnderline(
                            child: DropdownButton(iconEnabledColor: theme.mainColor,
                              value: selectedMainSubjectCategory,hint: Text('Choose Main Subject',style: TextStyle(
                                color: theme.darkTextColor.withOpacity(.6),fontSize: 12,fontWeight: FontWeight.w500,
                        decoration: TextDecoration.none
                              ),),
                              isExpanded: true,
                              style:TextStyle(color: theme.darkTextColor,fontSize: 12,fontWeight: FontWeight.w500,
                        decoration: TextDecoration.none
                        ) ,
                              onChanged:(value) {
                              setState(() {
                                selectedMainSubjectCategory=value.toString();
                              });
                            } ,
                              items: [
                              DropdownMenuItem(value: 'Main Subject 1',
                                child: Text('Main Subject 1')), DropdownMenuItem(value: 'Main Subject 2',
                                child: Text('Main Subject 2')), DropdownMenuItem(value: 'Main Subject 3',
                                child: Text('MainSubject 3')), DropdownMenuItem(value: 'Main Subject 4',
                                child: Text('Main Subject 4')),
                            ], ),
                          )
                        ),
                    ), Padding(
                      padding:EdgeInsets.only(bottom: 10),
                      child: Container(alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(horizontal: 10),height: 40,
                        width: 250,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                          color: theme.whiteColor
                        ),child: DropdownButtonHideUnderline(
                          child: DropdownButton(iconEnabledColor: theme.mainColor,
                            value: selectedSubjectCategory,hint: Text('Choose Subject',style: TextStyle(
                              color: theme.darkTextColor.withOpacity(.6),fontSize: 12,fontWeight: FontWeight.w500,
                      decoration: TextDecoration.none
                            ),),
                            isExpanded: true,
                            style:TextStyle(color: theme.darkTextColor,fontSize: 12,fontWeight: FontWeight.w500,
                      decoration: TextDecoration.none
                      ) ,
                            onChanged:(value) {
                            setState(() {
                              selectedSubjectCategory=value.toString();
                            });
                          } ,
                            items: [
                            DropdownMenuItem(value: 'Subject 1',
                              child: Text('Subject 1')), DropdownMenuItem(value: 'Subject 2',
                              child: Text('Subject 2')), DropdownMenuItem(value: 'Subject 3',
                              child: Text('Subject 3')), DropdownMenuItem(value: 'Subject 4',
                              child: Text('Subject 4')),
                          ], ),
                        )
                      ),
                    ),
        Padding(
                      padding:EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [SizedBox(width: 77,),
                          Text('Add “Content”:',style: TextStyle(color: theme.darkTextColor,fontSize: 13,fontWeight: FontWeight.w500,
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
                        SizedBox(width: 20,),Container(alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(horizontal: 10),height: 30,
                                  width: 140,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                    color:theme.mainColor
                                  ),child:  Text('Upload Content Image',style: TextStyle(color: theme.whiteColor,fontSize: 11,fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none
                            ),
                                  ),
                          
                          ),SizedBox(width: 23,)
                          ]
                      ),
                    ),    Padding(
                      padding:EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                        children: [SizedBox(width: 30,),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text('Description:',style: TextStyle(color: theme.darkTextColor,fontSize: 13,fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none
                            ),
                            ),
                          ),SizedBox(width: 20,),Container(alignment: Alignment.centerLeft,
                            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                            width: 250,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                              color: theme.whiteColor
                            ),child: TextField(maxLines:6,
                              style:  TextStyle(color: theme.darkTextColor,fontSize: 12,fontWeight: FontWeight.w500,
                          decoration: TextDecoration.none,
                          ),
                              decoration: InputDecoration(isDense: true,
                                border: InputBorder.none,
                               
                              ),
                            ),
                          ),
                        SizedBox(width: 120),
                          ]
                      ),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [Container(
                            height: 20,width: 20,color: theme.lightTextColor,
                            child: Icon(Icons.done,color:theme.mainColor,size: 15 ,),
                          ),SizedBox(width: 10,),
                            Text('Show on Page',style: TextStyle(color: theme.darkTextColor,fontSize: 11,fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.none
                                  ),
                                  ),
                          ],
                        ),SizedBox(width: 20),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [Container(
                        height: 20,width: 20,color: theme.lightTextColor,
                        child: Icon(Icons.done,color:theme.mainColor,size: 15 ,),
                      ),SizedBox(width: 10,),
                        Text('Free',style: TextStyle(color: theme.darkTextColor,fontSize: 11,fontWeight: FontWeight.w500,
                              decoration: TextDecoration.none
                              ),
                              ),
                      ],
                    )
                      ],
                    ),SizedBox(height: 30,),
                    Container(alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(horizontal: 10),height: 40,
                                  width: 110,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                    color:theme.mainColor
                                  ),child:  Text('Add',style: TextStyle(color: theme.whiteColor,fontSize: 13.5,fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none
                            ),
                                  ),
                          
                          ),SizedBox(height: 40,),
                            Text('Recently Added Content in this Path:',style: TextStyle(color: theme.mainColor,fontSize: 13,fontWeight: FontWeight.w500,
                          decoration: TextDecoration.none
                          )),SizedBox(height: 20,),
                         Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [Row(children: [Container(
                        height: 5,width: 5,
                       decoration: BoxDecoration(color: theme.darkTextColor,shape: BoxShape.circle),
                      ),SizedBox(width: 10,),
                        Text('Mathematics ',style: TextStyle(color: theme.darkTextColor,fontSize: 12,fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.none
                                    ),
                                    ),Icon(Icons.arrow_forward_ios,color:theme.darkTextColor,size: 12 ,)],),
                                    Text(' Grade 12 ',style: TextStyle(color: theme.darkTextColor,fontSize: 12,fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.none
                                    ),
                                    ),Icon(Icons.arrow_forward_ios,color:theme.darkTextColor,size: 12 ,),
                                    Text(' Analysis ',style: TextStyle(color: theme.darkTextColor,fontSize: 12,fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.none
                                    ),
                                    ),Icon(Icons.arrow_forward_ios,color:theme.darkTextColor,size: 12 ,),Text(' Integral Analysis for beginners ',style: TextStyle(color: theme.darkTextColor,fontSize: 12,fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.none
                                    ),
                                    ),Icon(Icons.arrow_forward_ios,color:theme.darkTextColor,size: 12 ,)
                       
                      ],
                    ),SizedBox(height: 15),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 140,bottom: 10),
                                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [SizedBox(width:210,child:Row(children: [Container(
                        height: 5,width: 5,
                       decoration: BoxDecoration(color: theme.darkTextColor,shape: BoxShape.circle),
                      ),SizedBox(width: 10,),
                        Text('Definition',style: TextStyle(color: theme.darkTextColor,fontSize: 12,fontWeight: FontWeight.w500,
                                          decoration: TextDecoration.none
                                          ),
                                          )],) ,),SizedBox(width: 10,),
                        Text('edit',style: TextStyle(color: theme.darkTextColor,fontSize: 11,fontWeight: FontWeight.w500,
                                          decoration: TextDecoration.none
                                          ),
                                          ),SizedBox(width: 10,),
                                          SizedBox(height: 10,width:25,child: Image.asset('assets/down_arrow.png'),
                                          )
                      ],
                    ),
                                    ), Padding(
                                      padding: const EdgeInsets.only(left: 140,bottom: 10),
                                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [SizedBox(width:210,child:Row(children: [Container(
                        height: 5,width: 5,
                       decoration: BoxDecoration(color: theme.darkTextColor,shape: BoxShape.circle),
                      ),SizedBox(width: 10,),
                        Text('Unscaleable Algebra',style: TextStyle(color: theme.darkTextColor,fontSize: 12,fontWeight: FontWeight.w500,
                                          decoration: TextDecoration.none
                                          ),
                                          )],) ,),SizedBox(width: 10,),
                        Text('edit',style: TextStyle(color: theme.darkTextColor,fontSize: 11,fontWeight: FontWeight.w500,
                                          decoration: TextDecoration.none
                                          ),
                                          ),SizedBox(width: 10,),
                                          SizedBox(height: 25,width:25,child: Image.asset('assets/up_down_arrow.png'),
                                          )
                      ],
                    ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          
                          ),
      ],
    );
  }
}