import 'package:chunk_dashboard/theme/theme.dart';
import 'package:flutter/material.dart';

class MainCategory extends StatefulWidget {
  const MainCategory({ Key? key }) : super(key: key);

  @override
  _MainCategoryState createState() => _MainCategoryState();
}

class _MainCategoryState extends State<MainCategory> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
                      padding:EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Add “Main Category”:',style: TextStyle(color: theme.darkTextColor,fontSize: 13,fontWeight: FontWeight.w500,
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
                          ),SizedBox(width: 20,),Container(alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(horizontal: 10),height: 30,
                                  width: 90,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                    color:theme.mainColor
                                  ),child:  Text('Upload Icon',style: TextStyle(color: theme.whiteColor,fontSize: 11,fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none
                            ),
                                  ),
                          
                          ),SizedBox(width: 40,)
                          ],
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
                            Text('Recently Added Main Category:',style: TextStyle(color: theme.mainColor,fontSize: 13,fontWeight: FontWeight.w500,
                          decoration: TextDecoration.none
                          )),SizedBox(height: 20,),
                         Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [SizedBox(width: 100,child:Row(children: [Container(
                        height: 5,width: 5,
                       decoration: BoxDecoration(color: theme.darkTextColor,shape: BoxShape.circle),
                      ),SizedBox(width: 10,),
                        Text('Mathematics',style: TextStyle(color: theme.darkTextColor,fontSize: 12,fontWeight: FontWeight.w500,
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
                          
                          ),Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [SizedBox(width: 100,child:Row(children: [Container(
                        height: 5,width: 5,
                       decoration: BoxDecoration(color: theme.darkTextColor,shape: BoxShape.circle),
                      ),SizedBox(width: 10,),
                        Text('Physics',style: TextStyle(color: theme.darkTextColor,fontSize: 12,fontWeight: FontWeight.w500,
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
                          )
      ],
    );
  }
}