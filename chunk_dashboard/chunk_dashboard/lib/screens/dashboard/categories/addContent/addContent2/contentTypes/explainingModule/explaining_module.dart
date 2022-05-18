import 'package:chunk_dashboard/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:html_editor_enhanced/html_editor.dart';

class ExplainingModule extends StatefulWidget {
  const ExplainingModule({Key? key}) : super(key: key);

  @override
  _ExplainingModuleState createState() => _ExplainingModuleState();
}

class _ExplainingModuleState extends State<ExplainingModule> {
  HtmlEditorController controller = HtmlEditorController();

  int numberOfOptions = 2;
  controllers(){
    
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: theme.whiteColor),
            child: HtmlEditor(
              htmlToolbarOptions: HtmlToolbarOptions(
                customToolbarInsertionIndices: [4],
                gridViewHorizontalSpacing: 0,
                gridViewVerticalSpacing: 2,
                toolbarItemHeight: 28,
                toolbarType: ToolbarType.nativeGrid,
                customToolbarButtons: [
                  Icon(
                    Icons.gif,
                    size: 30,
                  )
                ],
                textStyle: TextStyle(fontSize: 13),
              ),
              controller: controller, //required

              htmlEditorOptions: HtmlEditorOptions(
                hint: "Your text here...",
                //initalText: "text content initial, if any",
              ),
              otherOptions: OtherOptions(height: 300),
            )),
      ],
    );
  }
}
