import 'package:chunk_dashboard/theme/theme.dart';
import 'package:flutter/material.dart';

class SubCategory extends StatefulWidget {
  const SubCategory({ Key? key }) : super(key: key);

  @override
  _SubCategoryState createState() => _SubCategoryState();
}

class _SubCategoryState extends State<SubCategory> {
  String? selectedCategory;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
           Padding(
                      padding:EdgeInsets.only(bottom: 10),
                      child: Container(alignment: Alignment.centerLeft,
                           padding: EdgeInsets.symmetric(horizontal: 10),height: 40,
                           width: 250,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                             color: theme.whiteColor
                           ),child: DropdownButtonHideUnderline(
                             child: DropdownButton(iconEnabledColor: theme.mainColor,
                               value: selectedCategory,hint: Text('Choose Main Category',style: TextStyle(
                                 color: theme.darkTextColor.withOpacity(.6),fontSize: 12,fontWeight: FontWeight.w500,
                         decoration: TextDecoration.none
                               ),),
                               isExpanded: true,
                               style:TextStyle(color: theme.darkTextColor,fontSize: 12,fontWeight: FontWeight.w500,
                         decoration: TextDecoration.none
                         ) ,
                               onChanged:(value) {
                               setState(() {
                                 selectedCategory=value.toString();
                               });
                             } ,
                               items: [
                               DropdownMenuItem(value: 'Category 1',
                                 child: Text('Category 1')), DropdownMenuItem(value: 'Category 2',
                                 child: Text('Category 2')), DropdownMenuItem(value: 'Category 3',
                                 child: Text('Category 3')), DropdownMenuItem(value: 'Category 4',
                                 child: Text('Category 4')),
                             ], ),
                           )
                         ),
                    ),
        Padding(
                      padding:EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Add “Sub Category”:',style: TextStyle(color: theme.darkTextColor,fontSize: 13,fontWeight: FontWeight.w500,
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
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [Container(
                        height: 20,width: 20,color: theme.lightTextColor,
                        child: Icon(Icons.done,color:theme.mainColor,size: 15 ,),
                      ),SizedBox(width: 10,),
                        Text('Show in Menu',style: TextStyle(color: theme.darkTextColor,fontSize: 11,fontWeight: FontWeight.w500,
                              decoration: TextDecoration.none
                              ),
                              ),
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
                            Text('Recently Added Sub category in this path:',style: TextStyle(color: theme.mainColor,fontSize: 13,fontWeight: FontWeight.w500,
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
                                    ),Icon(Icons.arrow_forward_ios,color:theme.darkTextColor,size: 12 ,)],),SizedBox(width: 70,),
                       
                      ],
                    ),SizedBox(height: 15),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 30,bottom: 10),
                                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [SizedBox(width: 100,child:Row(children: [Container(
                        height: 5,width: 5,
                       decoration: BoxDecoration(color: theme.darkTextColor,shape: BoxShape.circle),
                      ),SizedBox(width: 10,),
                        Text('Grade 11',style: TextStyle(color: theme.darkTextColor,fontSize: 12,fontWeight: FontWeight.w500,
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
                                      padding: const EdgeInsets.only(left: 30,bottom: 10),
                                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [SizedBox(width: 100,child:Row(children: [Container(
                        height: 5,width: 5,
                       decoration: BoxDecoration(color: theme.darkTextColor,shape: BoxShape.circle),
                      ),SizedBox(width: 10,),
                        Text('Grade 12',style: TextStyle(color: theme.darkTextColor,fontSize: 12,fontWeight: FontWeight.w500,
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