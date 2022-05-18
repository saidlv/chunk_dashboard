import 'package:chunk_dashboard/screens/dashboard/categories/addCategory/content/content.dart';
import 'package:chunk_dashboard/screens/dashboard/categories/addCategory/mainCategory/main_category.dart';
import 'package:chunk_dashboard/screens/dashboard/categories/addCategory/mainSubject/main_subject.dart';
import 'package:chunk_dashboard/screens/dashboard/categories/addCategory/subCategory/sub_category.dart';
import 'package:chunk_dashboard/screens/dashboard/categories/addCategory/subject/subject.dart';
import 'package:chunk_dashboard/theme/theme.dart';
import 'package:flutter/material.dart';

class AddCategory extends StatefulWidget {
  const AddCategory({ Key? key }) : super(key: key);

  @override
  _AddCategoryState createState() => _AddCategoryState();
}

class _AddCategoryState extends State<AddCategory> {

   List<dynamic> categories = [
     {
       'name':'Main Category','selected':true
     }, {
       'name':'Sub Category','selected':false
     }, {
       'name':'Main Subject','selected':false
     }, {
       'name':'Subject','selected':false
     }, {
       'name':'Content','selected':false
     },  
  ];
  ScrollController controller=ScrollController();
  String selectedCategory='Main Category';
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Align(alignment: Alignment.topCenter,
      child: SingleChildScrollView(controller: controller,
        child: Column(
          children: [
            SizedBox(height: 60,),
       Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for(int i=0;i<categories.length;i++)
                            GestureDetector(onTap: () {
                                setState(() {
                categories[i]['selected']=true;
                selectedCategory= categories[i]['name'];
                categories.forEach((element) { 
                  if(element['name']==categories[i]['name']){
      
                  }else{
                    element['selected']=false;
                  }
                });
              });
                            },
                              child: Container(alignment: Alignment.center,margin: EdgeInsets.only(right:20 ),
                                padding: EdgeInsets.symmetric(horizontal: 10),height: 30,
                                      width: 100,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                        color:categories[i]['selected']? theme.mainColor:theme.lightTextColor.withOpacity(.8)
                                      ),child:  Text(categories[i]['name'],style: TextStyle(color: theme.whiteColor,fontSize: 11,fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none
                                ),
                                      ),
                              ),
                            ),
                          ],
                        ),  SizedBox(height: 40,),
                        selectedCategory==categories[0]['name']?MainCategory():
                        selectedCategory==categories[1]['name']?SubCategory():
                         selectedCategory==categories[2]['name']?MainSubject():
                          selectedCategory==categories[3]['name']?Subject():
                          selectedCategory==categories[4]['name']?Content():
                        SizedBox()
          ],
          
        ),
      ),
    );
  }
}