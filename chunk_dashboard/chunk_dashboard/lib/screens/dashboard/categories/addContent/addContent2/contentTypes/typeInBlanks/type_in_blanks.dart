import 'package:chunk_dashboard/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:math_keyboard/math_keyboard.dart';

class TypeInBlanks extends StatefulWidget {
  const TypeInBlanks({Key? key}) : super(key: key);

  @override
  _TypeInBlanksState createState() => _TypeInBlanksState();
}

class _TypeInBlanksState extends State<TypeInBlanks> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Put the blanks between two stars(e.g.*place*):',
          style: TextStyle(color: theme.darkTextColor, fontSize: 11.5),
        ),
        SizedBox(
          height: 3,
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: theme.whiteColor),
          child: MathField(
            variables: ['n', 'a', 'b', 'x', 'y'],
            //     style:  TextStyle(color: theme.darkTextColor,fontSize: 12,fontWeight: FontWeight.w500,
            // decoration: TextDecoration.none,
            // ),
            decoration: InputDecoration(
              isDense: true,
              border: InputBorder.none,
            ),
          ),
        ),
        SizedBox(
          height: 13,
        ),
        checkAllOrOneByOne(),
        SizedBox(
          height: 15,
        ),
        optionalComment()
      ],
    );
  }

  Widget checkAllOrOneByOne() {
    return Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: Row(
          children: [
            Row(
              children: [
                Container(
                  height: 13,
                  width: 13,
                  color: theme.lightTextColor,
                  child: Icon(
                    Icons.done,
                    color: theme.mainColor,
                    size: 12,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'check all together',
                  style: TextStyle(
                      color: theme.darkTextColor,
                      fontSize: 10.5,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.none),
                )
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 13, width: 13, color: theme.lightTextColor,
                  // child: Icon(Icons.done,color:theme.mainColor,size: 12 ,),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'check one by one',
                  style: TextStyle(
                      color: theme.darkTextColor,
                      fontSize: 10.5,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.none),
                )
              ],
            ),
          ],
        ));
  }

  Widget optionalComment() {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Add Comment (optional)',
                style: TextStyle(color: theme.darkTextColor, fontSize: 11.5),
              ),
              SizedBox(
                width: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 13,
                    width: 13,
                    color: theme.lightTextColor,
                    child: Icon(
                      Icons.done,
                      color: theme.mainColor,
                      size: 12,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'by correct',
                    style: TextStyle(
                        color: theme.darkTextColor,
                        fontSize: 10.5,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.none),
                  )
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 13, width: 13, color: theme.lightTextColor,
                    // child: Icon(Icons.done,color:theme.mainColor,size: 12 ,),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'by false',
                    style: TextStyle(
                        color: theme.darkTextColor,
                        fontSize: 10.5,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.none),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 3,
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: theme.whiteColor),
            child: TextField(
              maxLines: 4,
              style: TextStyle(
                color: theme.darkTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.none,
              ),
              decoration: InputDecoration(
                isDense: true,
                border: InputBorder.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}
