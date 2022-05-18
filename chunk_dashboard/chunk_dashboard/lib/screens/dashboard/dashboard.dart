import 'package:chunk_dashboard/screens/dashboard/categories/access/access.dart';
import 'package:chunk_dashboard/screens/dashboard/categories/addCategory/add_category.dart';
import 'package:chunk_dashboard/screens/dashboard/categories/addContent/add_content.dart';
import 'package:chunk_dashboard/screens/dashboard/categories/adminProfile/admin_profile.dart';
import 'package:chunk_dashboard/screens/dashboard/categories/manageComments/manage_comments.dart';
import 'package:chunk_dashboard/screens/dashboard/categories/paymentHistory/payment_history.dart';
import 'package:chunk_dashboard/screens/dashboard/categories/transitions/transitions.dart';
import 'package:chunk_dashboard/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:math_keyboard/math_keyboard.dart';

import 'categories/manageUsers/manage_users.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<dynamic> categories = [
    {'name': 'Admin Profile', 'selected': false},
    {'name': 'Add Category', 'selected': false},
    {'name': 'Add Content', 'selected': true},
    {'name': 'Transitions', 'selected': false},
    {'name': 'Manage Users', 'selected': false},
    {'name': 'Manage Comments', 'selected': false},
    {'name': 'Access', 'selected': false},
    {'name': 'Payment History', 'selected': false},
  ];
  String selectedCategory = 'Add Content';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.appBackgroundColor,
      body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Row(
            children: [
              Container(
                width: 260,
                color: Colors.red,
                height: double.infinity,
                child: drawer(context),
              ),
              Expanded(
                child: selectedCategory == categories[0]['name']
                    ? AdminProfile()
                    : selectedCategory == categories[1]['name']
                        ? AddCategory()
                        : selectedCategory == categories[2]['name']
                            ? AddContent()
                            : selectedCategory == categories[3]['name']
                                ? Transitions()
                                : selectedCategory == categories[4]['name']
                                    ? ManageUsers()
                                    : selectedCategory == categories[5]['name']
                                        ? ManageComments()
                                        : selectedCategory ==
                                                categories[6]['name']
                                            ? Access()
                                            : selectedCategory ==
                                                    categories[7]['name']
                                                ? PaymentHistory()
                                                : SizedBox(),
              )
            ],
          )),
    );
  }

  Widget drawer(context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.black,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 140,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(20))),
              // color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(),
                    child: Image.asset('assets/logo.png'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Chunks',
                    style: TextStyle(
                        color: theme.whiteColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            for (int i = 0; i < categories.length; i++)
              InkWell(
                onTap: () {
                  setState(() {
                    categories[i]['selected'] = true;
                    selectedCategory = categories[i]['name'];
                    categories.forEach((element) {
                      if (element['name'] == categories[i]['name']) {
                      } else {
                        element['selected'] = false;
                      }
                    });
                  });
                },
                child: Padding(
                  padding: EdgeInsets.only(bottom: 28),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        categories[i]['name'],
                        style: TextStyle(
                            color: categories[i]['selected']
                                ? theme.whiteColor
                                : theme.whiteColor.withOpacity(.5),
                            fontSize: 12),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          height: .5,
                          width: double.infinity,
                          color: categories[i]['selected']
                              ? theme.whiteColor
                              : theme.whiteColor.withOpacity(.5))
                    ],
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
