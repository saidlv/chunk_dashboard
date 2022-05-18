import 'package:chunk_dashboard/theme/theme.dart';
import 'package:flutter/material.dart';

class AdminProfile extends StatelessWidget {
  const AdminProfile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Email:                      ',style: TextStyle(color: theme.darkTextColor,fontSize: 13,fontWeight: FontWeight.w500,
                          decoration: TextDecoration.none
                          ),
                          ),SizedBox(width: 20,),Container(alignment: Alignment.centerLeft,
                            padding: EdgeInsets.symmetric(horizontal: 10),height: 40,
                            width: 300,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                              color: theme.whiteColor
                            ),child: TextField(
                              style:  TextStyle(color: theme.darkTextColor,fontSize: 13,fontWeight: FontWeight.w500,
                          decoration: TextDecoration.none,
                          ),
                              decoration: InputDecoration(isDense: true,
                                border: InputBorder.none,
                               
                              ),
                            ),
                          )
                        ],
                      ),
                    ),Padding(
                      padding:EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Current Password:',style: TextStyle(color: theme.darkTextColor,fontSize: 13,fontWeight: FontWeight.w500,
                          decoration: TextDecoration.none
                          ),
                          ),SizedBox(width: 20,),Container(alignment: Alignment.centerLeft,
                            padding: EdgeInsets.symmetric(horizontal: 10),height: 40,
                            width: 300,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                              color: theme.whiteColor
                            ),child: TextField(
                              style:  TextStyle(color: theme.darkTextColor,fontSize: 13,fontWeight: FontWeight.w500,
                          decoration: TextDecoration.none,
                          ),
                              decoration: InputDecoration(isDense: true,
                                border: InputBorder.none,
                               
                              ),
                            ),
                          )
                        ],
                      ),
                    ),Padding(
                      padding:EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Change Password:',style: TextStyle(color: theme.darkTextColor,fontSize: 13,fontWeight: FontWeight.w500,
                          decoration: TextDecoration.none
                          ),
                          ),SizedBox(width: 20,),Container(alignment: Alignment.centerLeft,
                            padding: EdgeInsets.symmetric(horizontal: 10),height: 40,
                            width: 300,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                              color: theme.whiteColor
                            ),child: TextField(
                              style:  TextStyle(color: theme.darkTextColor,fontSize: 13,fontWeight: FontWeight.w500,
                          decoration: TextDecoration.none,
                          ),
                              decoration: InputDecoration(isDense: true,
                                border: InputBorder.none,
                               
                              ),
                            ),
                          )
                        ],
                      ),
                    ),Padding(
                      padding:EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Repeat Password:',style: TextStyle(color: theme.darkTextColor,fontSize: 13,fontWeight: FontWeight.w500,
                          decoration: TextDecoration.none
                          ),
                          ),SizedBox(width: 20,),Container(alignment: Alignment.centerLeft,
                            padding: EdgeInsets.symmetric(horizontal: 10),height: 40,
                            width: 300,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                              color: theme.whiteColor
                            ),child: TextField(
                              style:  TextStyle(color: theme.darkTextColor,fontSize: 13,fontWeight: FontWeight.w500,
                          decoration: TextDecoration.none,
                          ),
                              decoration: InputDecoration(isDense: true,
                                border: InputBorder.none,
                               
                              ),
                            ),
                          )
                        ],
                      ),
                    ),SizedBox(height: 20,),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(horizontal: 10),height: 50,
                                width: 435,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                  color: theme.mainColor
                                ),child:  Text('Save',style: TextStyle(color: theme.whiteColor,fontSize: 15,fontWeight: FontWeight.w500,
                          decoration: TextDecoration.none
                          ),
                                ),
                        ),
                      ],
                    )
                  ],
                );
  }
}