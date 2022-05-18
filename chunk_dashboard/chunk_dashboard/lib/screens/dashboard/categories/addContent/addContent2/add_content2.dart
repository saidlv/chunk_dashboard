import 'package:chunk_dashboard/screens/dashboard/categories/addContent/addContent2/contentTypes/chooseTheBlanks/choose_the_blanks.dart';
import 'package:chunk_dashboard/screens/dashboard/categories/addContent/addContent2/contentTypes/clickOrMarkTheWord/click_or_mark_word.dart';
import 'package:chunk_dashboard/screens/dashboard/categories/addContent/addContent2/contentTypes/dragToCategory/drag_to_category.dart';
import 'package:chunk_dashboard/screens/dashboard/categories/addContent/addContent2/contentTypes/explainingModule/explaining_module.dart';
import 'package:chunk_dashboard/screens/dashboard/categories/addContent/addContent2/contentTypes/imageDrawLines/image_draw_lines.dart';
import 'package:chunk_dashboard/screens/dashboard/categories/addContent/addContent2/contentTypes/imageHotspotMatchText/image_hotspot_match_text.dart';
import 'package:chunk_dashboard/screens/dashboard/categories/addContent/addContent2/contentTypes/imageOrTextChoice/image_or_text_choice.dart';
import 'package:chunk_dashboard/screens/dashboard/categories/addContent/addContent2/contentTypes/multipleChoice/multiple_choice.dart';
import 'package:chunk_dashboard/screens/dashboard/categories/addContent/addContent2/contentTypes/pairs/pairs.dart';
import 'package:chunk_dashboard/screens/dashboard/categories/addContent/addContent2/contentTypes/sortingParagraphs/sorting_paragraphs.dart';
import 'package:chunk_dashboard/screens/dashboard/categories/addContent/addContent2/contentTypes/trueFalse/true_false.dart';
import 'package:chunk_dashboard/screens/dashboard/categories/addContent/addContent2/contentTypes/turnCard/turn_card.dart';
import 'package:chunk_dashboard/screens/dashboard/categories/addContent/addContent2/contentTypes/typeInBlanks/type_in_blanks.dart';
import 'package:chunk_dashboard/theme/theme.dart';
import 'package:flutter/material.dart';

import 'contentTypes/imageHotspot/image_hotspot.dart';

class AddContent2 extends StatefulWidget {
  const AddContent2({Key? key}) : super(key: key);

  @override
  _AddContent2State createState() => _AddContent2State();
}

class _AddContent2State extends State<AddContent2> {
  List<dynamic> selectedMainCategoriesList = [
    // {'SelectedMainCategory': "Explanation Module"}
    {'SelectedMainCategory': "Type in the Blanks"}
  ];

  String? selectedSubCategory;
  String? selectedMainSubjectCategory;
  String? selectedSubjectCategory;
  String? selectedContentCategory;

  ScrollController controller = ScrollController();

  int numberOfStations = 1;
  int numberOfCards = 1;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(left: 70),
        child: SingleChildScrollView(
          controller: controller,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  Text(
                    'Mathematics ',
                    style: TextStyle(
                        color: theme.darkTextColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.none),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: theme.darkTextColor,
                    size: 12,
                  ),
                  Text(
                    ' Grade 12 ',
                    style: TextStyle(
                        color: theme.darkTextColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.none),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: theme.darkTextColor,
                    size: 12,
                  ),
                  Text(
                    ' Analysis ',
                    style: TextStyle(
                        color: theme.darkTextColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.none),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: theme.darkTextColor,
                    size: 12,
                  ),
                  Text(
                    ' E-functions ',
                    style: TextStyle(
                        color: theme.darkTextColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.none),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: theme.darkTextColor,
                    size: 12,
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  for (int i = 0; i < numberOfStations; i++)
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(right: 10),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 32,
                      width: 75,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: theme.mainColor),
                      child: Text(
                        'Station ${i + 1}',
                        style: TextStyle(
                            color: theme.whiteColor,
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none),
                      ),
                    ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        numberOfStations = numberOfStations + 1;
                      });
                    },
                    child: Text(
                      '+ add new station',
                      style: TextStyle(
                          color: theme.mainColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              station1()
            ],
          ),
        ),
      ),
    );
  }

  Widget station1() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (int i = 0; i < numberOfCards; i++) contentsList(i),
        SizedBox(
          width: MediaQuery.of(context).size.width / 1.8,
          child: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    numberOfCards = numberOfCards + 1;
                    selectedMainCategoriesList
                        .add({'SelectedMainCategory': "Explanation Module"});
                  });
                },
                child: Text(
                  '+ add new card',
                  style: TextStyle(
                      color: theme.mainColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.none),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 100,
        )
      ],
    );
  }

  Widget contentsList(i) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 1.8,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration:
                BoxDecoration(border: Border.all(color: theme.lightTextColor)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Choose the content type',
                        style: TextStyle(
                            color: theme.darkTextColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          height: 30,
                          width: 220,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: theme.whiteColor),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              iconEnabledColor: theme.mainColor,
                              value: selectedMainCategoriesList[i]
                                  ['SelectedMainCategory'],
                              hint: Text(
                                'Choose content type',
                                style: TextStyle(
                                    color: theme.darkTextColor.withOpacity(.6),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.none),
                              ),
                              isExpanded: true,
                              style: TextStyle(
                                  color: theme.darkTextColor,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.none),
                              onChanged: (value) {
                                setState(() {
                                  selectedMainCategoriesList[i]
                                          ['SelectedMainCategory'] =
                                      value.toString();
                                });
                              },
                              items: [
                                DropdownMenuItem(
                                    value: 'Explanation Module',
                                    child: Text('Explanation Module')),
                                DropdownMenuItem(
                                    value: 'Multiple Choice',
                                    child: Text('Multiple Choice')),
                                DropdownMenuItem(
                                    value: 'True False',
                                    child: Text('True False')),
                                DropdownMenuItem(
                                    value: 'Type in the Blanks',
                                    child: Text('Type in the Blanks')),
                                DropdownMenuItem(
                                    value: 'Choose the Blanks',
                                    child: Text('Choose the Blanks')),
                                DropdownMenuItem(
                                    value: 'Turn Card',
                                    child: Text('Turn Card')),
                                DropdownMenuItem(
                                    value: 'Click/mark the word',
                                    child: Text('Click/mark the word')),
                                DropdownMenuItem(
                                    value: 'Image/text choice',
                                    child: Text('Image/text choice')),
                                DropdownMenuItem(
                                    value: 'Pairs', child: Text('Pairs')),
                                DropdownMenuItem(
                                    value: 'Sorting Paragraphs',
                                    child: Text('Sorting Paragraphs')),
                                DropdownMenuItem(
                                    value: 'Drag To Category',
                                    child: Text('Drag To Category')),
                                DropdownMenuItem(
                                    value: 'Image Hotspot',
                                    child: Text('Image Hotspot')),
                                DropdownMenuItem(
                                    value: 'Image Hotspot Match Text',
                                    child: Text('Image Hotspot Match Text')),
                                DropdownMenuItem(
                                    value: 'Image Draw Lines',
                                    child: Text('Image Draw Lines'))
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
                selectedMainCategoriesList[i]['SelectedMainCategory'] ==
                        'Multiple Choice'
                    ? MultipleChoice()
                    : selectedMainCategoriesList[i]['SelectedMainCategory'] ==
                            'Explanation Module'
                        ? ExplainingModule()
                        : selectedMainCategoriesList[i]['SelectedMainCategory'] ==
                                'True False'
                            ? TrueFalse()
                            : selectedMainCategoriesList[i]
                                        ['SelectedMainCategory'] ==
                                    'Type in the Blanks'
                                ? TypeInBlanks()
                                : selectedMainCategoriesList[i]
                                            ['SelectedMainCategory'] ==
                                        'Choose the Blanks'
                                    ? ChooseTheBlanks()
                                    : selectedMainCategoriesList[i]
                                                ['SelectedMainCategory'] ==
                                            'Turn Card'
                                        ? TurnCard()
                                        : selectedMainCategoriesList[i]
                                                    ['SelectedMainCategory'] ==
                                                'Click/mark the word'
                                            ? ClickOrMarkWord()
                                            : selectedMainCategoriesList[i]['SelectedMainCategory'] ==
                                                    'Image/text choice'
                                                ? ImageOrTextChoice()
                                                : selectedMainCategoriesList[i][
                                                            'SelectedMainCategory'] ==
                                                        'Pairs'
                                                    ? Pairs()
                                                    : selectedMainCategoriesList[i]['SelectedMainCategory'] ==
                                                            'Sorting Paragraphs'
                                                        ? SortingParagraphs()
                                                        : selectedMainCategoriesList[i]
                                                                    ['SelectedMainCategory'] ==
                                                                'Drag To Category'
                                                            ? DragToCategory()
                                                            : selectedMainCategoriesList[i]['SelectedMainCategory'] == 'Image Hotspot'
                                                                ? ImageHotspot()
                                                                : selectedMainCategoriesList[i]['SelectedMainCategory'] == 'Image Hotspot Match Text'
                                                                    ? ImageHotspotMatchText()
                                                                    : selectedMainCategoriesList[i]['SelectedMainCategory'] == 'Image Draw Lines'
                                                                        ? ImageDrawLines()
                                                                        : Container(
                                                                            height:
                                                                                200,
                                                                            color:
                                                                                theme.lightTextColor,
                                                                          ),
                SizedBox(
                  height: 15,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 24,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white),
                    child: Text(
                      'Save',
                      style: TextStyle(
                          color: theme.darkTextColor,
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.none),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 24,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white),
                    child: Text(
                      'Edit',
                      style: TextStyle(
                          color: theme.darkTextColor,
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.none),
                    ),
                  )
                ])
              ],
            ),
          ),
          SizedBox(width: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Icon(
                Icons.delete_outline,
                color: theme.darkTextColor,
                size: 23,
              ),
              SizedBox(
                height: 10,
              ),
              Icon(
                Icons.copy,
                color: theme.darkTextColor,
                size: 20,
              ),
              SizedBox(
                height: 10,
              ),
              Icon(
                Icons.edit,
                color: theme.darkTextColor,
                size: 20,
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  i > 0
                      ? GestureDetector(
                          onTap: () {
                            setState(() {
                              var selectedBlock =
                                  selectedMainCategoriesList.removeAt(i);
                              selectedMainCategoriesList.insert(
                                  i - 1, selectedBlock);
                            });
                          },
                          child: SizedBox(
                              height: 17,
                              width: 17,
                              child: Image.asset('assets/up_arrow.png')),
                        )
                      : SizedBox(),
                  SizedBox(
                    height: 3,
                  ),
                  i == selectedMainCategoriesList.length - 1
                      ? SizedBox()
                      : GestureDetector(
                          onTap: () {
                            setState(() {
                              var selectedBlock =
                                  selectedMainCategoriesList.removeAt(i);
                              selectedMainCategoriesList.insert(
                                  i + 1, selectedBlock);
                            });
                          },
                          child: SizedBox(
                              height: 17,
                              width: 17,
                              child: Image.asset('assets/down_arrow.png')),
                        )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
