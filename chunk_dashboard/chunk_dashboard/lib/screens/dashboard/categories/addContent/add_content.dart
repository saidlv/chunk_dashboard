import 'package:chunk_dashboard/screens/dashboard/categories/addContent/addContent2/add_content2.dart';
import 'package:chunk_dashboard/theme/theme.dart';
import 'package:flutter/material.dart';

class AddContent extends StatefulWidget {
  const AddContent({Key? key}) : super(key: key);

  @override
  _AddContentState createState() => _AddContentState();
}

class _AddContentState extends State<AddContent> {
  String? selectedMainCategory;
  String? selectedSubCategory;
  String? selectedMainSubjectCategory;
  String? selectedSubjectCategory;
  String? selectedContentCategory;
  ScrollController controller = ScrollController();

  bool showAddContent2 = true;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return showAddContent2
        ? AddContent2()
        : Align(
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
              controller: controller,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 80,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 90,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                height: 40,
                                width: 250,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: theme.whiteColor),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    iconEnabledColor: theme.mainColor,
                                    value: selectedMainCategory,
                                    hint: Text(
                                      'Choose Main Category',
                                      style: TextStyle(
                                          color: theme.darkTextColor
                                              .withOpacity(.6),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          decoration: TextDecoration.none),
                                    ),
                                    isExpanded: true,
                                    style: TextStyle(
                                        color: theme.darkTextColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        decoration: TextDecoration.none),
                                    onChanged: (value) {
                                      setState(() {
                                        selectedMainCategory = value.toString();
                                      });
                                    },
                                    items: [
                                      DropdownMenuItem(
                                          value: 'Main Category 1',
                                          child: Text('Main Category 1')),
                                      DropdownMenuItem(
                                          value: 'Main Category 2',
                                          child: Text('Main Category 2')),
                                      DropdownMenuItem(
                                          value: 'Main Category 3',
                                          child: Text('Main Category 3')),
                                      DropdownMenuItem(
                                          value: 'Main Category 4',
                                          child: Text('Main Category 4')),
                                    ],
                                  ),
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                height: 40,
                                width: 250,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: theme.whiteColor),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    iconEnabledColor: theme.mainColor,
                                    value: selectedSubCategory,
                                    hint: Text(
                                      'Choose Sub Category',
                                      style: TextStyle(
                                          color: theme.darkTextColor
                                              .withOpacity(.6),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          decoration: TextDecoration.none),
                                    ),
                                    isExpanded: true,
                                    style: TextStyle(
                                        color: theme.darkTextColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        decoration: TextDecoration.none),
                                    onChanged: (value) {
                                      setState(() {
                                        selectedSubCategory = value.toString();
                                      });
                                    },
                                    items: [
                                      DropdownMenuItem(
                                          value: 'Sub Category 1',
                                          child: Text('Sub Category 1')),
                                      DropdownMenuItem(
                                          value: 'Sub Category 2',
                                          child: Text('Sub Category 2')),
                                      DropdownMenuItem(
                                          value: 'Sub Category 3',
                                          child: Text('Sub Category 3')),
                                      DropdownMenuItem(
                                          value: 'Sub Category 4',
                                          child: Text('Sub Category 4')),
                                    ],
                                  ),
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                height: 40,
                                width: 250,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: theme.whiteColor),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    iconEnabledColor: theme.mainColor,
                                    value: selectedMainSubjectCategory,
                                    hint: Text(
                                      'Choose Main Subject',
                                      style: TextStyle(
                                          color: theme.darkTextColor
                                              .withOpacity(.6),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          decoration: TextDecoration.none),
                                    ),
                                    isExpanded: true,
                                    style: TextStyle(
                                        color: theme.darkTextColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        decoration: TextDecoration.none),
                                    onChanged: (value) {
                                      setState(() {
                                        selectedMainSubjectCategory =
                                            value.toString();
                                      });
                                    },
                                    items: [
                                      DropdownMenuItem(
                                          value: 'Main Subject 1',
                                          child: Text('Main Subject 1')),
                                      DropdownMenuItem(
                                          value: 'Main Subject 2',
                                          child: Text('Main Subject 2')),
                                      DropdownMenuItem(
                                          value: 'Main Subject 3',
                                          child: Text('MainSubject 3')),
                                      DropdownMenuItem(
                                          value: 'Main Subject 4',
                                          child: Text('Main Subject 4')),
                                    ],
                                  ),
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                height: 40,
                                width: 250,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: theme.whiteColor),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    iconEnabledColor: theme.mainColor,
                                    value: selectedSubjectCategory,
                                    hint: Text(
                                      'Choose Subject',
                                      style: TextStyle(
                                          color: theme.darkTextColor
                                              .withOpacity(.6),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          decoration: TextDecoration.none),
                                    ),
                                    isExpanded: true,
                                    style: TextStyle(
                                        color: theme.darkTextColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        decoration: TextDecoration.none),
                                    onChanged: (value) {
                                      setState(() {
                                        selectedSubjectCategory =
                                            value.toString();
                                      });
                                    },
                                    items: [
                                      DropdownMenuItem(
                                          value: 'Subject 1',
                                          child: Text('Subject 1')),
                                      DropdownMenuItem(
                                          value: 'Subject 2',
                                          child: Text('Subject 2')),
                                      DropdownMenuItem(
                                          value: 'Subject 3',
                                          child: Text('Subject 3')),
                                      DropdownMenuItem(
                                          value: 'Subject 4',
                                          child: Text('Subject 4')),
                                    ],
                                  ),
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                height: 40,
                                width: 250,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: theme.whiteColor),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    iconEnabledColor: theme.mainColor,
                                    value: selectedContentCategory,
                                    hint: Text(
                                      'Choose Content',
                                      style: TextStyle(
                                          color: theme.darkTextColor
                                              .withOpacity(.6),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          decoration: TextDecoration.none),
                                    ),
                                    isExpanded: true,
                                    style: TextStyle(
                                        color: theme.darkTextColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        decoration: TextDecoration.none),
                                    onChanged: (value) {
                                      setState(() {
                                        selectedContentCategory =
                                            value.toString();
                                      });
                                    },
                                    items: [
                                      DropdownMenuItem(
                                          value: 'Content 1',
                                          child: Text('Content 1')),
                                      DropdownMenuItem(
                                          value: 'Content 2',
                                          child: Text('Content 2')),
                                      DropdownMenuItem(
                                          value: 'Content 3',
                                          child: Text('Content 3')),
                                      DropdownMenuItem(
                                          value: 'Content 4',
                                          child: Text('Content 4')),
                                    ],
                                  ),
                                )),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                showAddContent2 = true;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              height: 40,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: theme.mainColor),
                              child: Text(
                                'Next',
                                style: TextStyle(
                                    color: theme.whiteColor,
                                    fontSize: 13.5,
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.none),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          for (int i = 0; i < 6; i++)
                            Padding(
                              padding: EdgeInsets.only(bottom: 34),
                              child: Text(
                                examplelist[i],
                                style: TextStyle(
                                    color: theme.darkTextColor,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.none),
                              ),
                            ),
                          SizedBox(
                            height: 53,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
  }

  List<String> examplelist = [
    'Example:',
    'Math',
    'Grade 12',
    'Analysis',
    'Integral Analysis for beginners',
    'Definition'
  ];
}
