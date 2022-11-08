import 'dart:ui';

import 'package:flutter/material.dart';

class dashBoardScreen extends StatefulWidget {
  const dashBoardScreen({super.key});

  @override
  State<dashBoardScreen> createState() => _dashBoardScreenState();
}

class _dashBoardScreenState extends State<dashBoardScreen> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
          children: [
            NavigationRail(
                extended: isExpanded,
                backgroundColor: const Color(0xff10568c),
                unselectedIconTheme:
                    IconThemeData(color: Colors.white, opacity: 2),
                unselectedLabelTextStyle: TextStyle(color: Colors.white),
                selectedIconTheme: IconThemeData(color: Colors.black38),
                destinations: [
                  NavigationRailDestination(
                    icon: Icon(Icons.home),
                    label: Text("Home"),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.bar_chart),
                    label: Text("Reports"),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.person),
                    label: Text("Profile"),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.settings),
                    label: Text("Settings"),
                  ),
                ],
                selectedIndex: 0),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                isExpanded = !isExpanded;
                              });
                            },
                            icon: Icon(Icons.menu),
                          ),
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1456327102063-fb5054efe647?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=f05c14dd4db49f08a789e6449604c490",
                            ),
                            radius: 27.0,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.article_rounded,
                                          size: 26.0,
                                        ),
                                        SizedBox(
                                          width: 15.0,
                                        ),
                                        Text(
                                          "Articles",
                                          style: TextStyle(
                                              fontSize: 26.0,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "10 Articles",
                                      style: TextStyle(
                                          fontSize: 26,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.comment,
                                          size: 26.0,
                                          color: Colors.redAccent,
                                        ),
                                        SizedBox(
                                          width: 15.0,
                                        ),
                                        Text(
                                          "Comments",
                                          style: TextStyle(
                                              color: Colors.redAccent,
                                              fontSize: 21.0,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 35.0,
                                    ),
                                    Text(
                                      "Massage +14",
                                      style: TextStyle(
                                          color: Colors.redAccent,
                                          fontSize: 21,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.people_outline,
                                          size: 26.0,
                                          color: Colors.greenAccent,
                                        ),
                                        SizedBox(
                                          width: 15.0,
                                        ),
                                        Text(
                                          "Followers",
                                          style: TextStyle(
                                              color: Colors.greenAccent,
                                              fontSize: 26.0,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Folowers 19.212",
                                      style: TextStyle(
                                          color: Colors.greenAccent,
                                          fontSize: 26,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.monetization_on_rounded,
                                          size: 26.0,
                                          color: Colors.orangeAccent,
                                        ),
                                        SizedBox(
                                          width: 15.0,
                                        ),
                                        Text(
                                          "Revenue",
                                          style: TextStyle(
                                              color: Colors.orangeAccent,
                                              fontSize: 26.0,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "\$4.500 ",
                                      style: TextStyle(
                                          color: Colors.orangeAccent,
                                          fontSize: 26,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "10 Articles",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 26.0,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text("10 Unread",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w200)),
                            ],
                          ),
                          Container(
                            width: 270.0,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Search Article",
                                prefixIcon: Icon(Icons.search_rounded),
                                border: OutlineInputBorder(
                                  borderRadius: (BorderRadius.circular(10)),
                                  borderSide: BorderSide(color: Colors.black26),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton.icon(
                            onPressed: () {},
                            // style: ButtonStyle(textStyle: ),
                            icon: Icon(
                              Icons.arrow_back_rounded,
                              color: Color(0xff10568c),
                            ),
                            label: Text(
                              "2022, Agustus 20,Agustus 21,Agustus 22,Agustus 23",
                              style: TextStyle(
                                color: Color(0xff10568c),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.all(9)),
                              DropdownButton(
                                  hint: Text("Filter By"),
                                  items: [
                                    DropdownMenuItem(
                                      value: "date",
                                      child: Text("Date"),
                                    ),
                                    DropdownMenuItem(
                                      value: "comments",
                                      child: Text("Comments"),
                                    ),
                                    DropdownMenuItem(
                                      value: "views",
                                      child: Text("Views"),
                                    ),
                                    DropdownMenuItem(
                                      value: "history",
                                      child: Text("History"),
                                    ),
                                  ],
                                  onChanged: (value) {}),
                              SizedBox(
                                width: 20.0,
                              ),
                              DropdownButton(
                                hint: Text("Order By"),
                                items: [
                                  DropdownMenuItem(
                                    value: "id",
                                    child: Text("ID"),
                                  ),
                                  DropdownMenuItem(
                                    value: "name",
                                    child: Text("Name"),
                                  ),
                                  DropdownMenuItem(
                                    value: "creation_date",
                                    child: Text("Creation_Date"),
                                  ),
                                  DropdownMenuItem(
                                    value: "title_article",
                                    child: Text("Article"),
                                  ),
                                ],
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          DataTable(
                              headingRowColor:
                                  MaterialStateProperty.resolveWith(
                                      (states) => Color(0xff10568c)),
                              columns: [
                                DataColumn(label: Text("ID")),
                                DataColumn(label: Text("Article Title")),
                                DataColumn(label: Text("Creation Date")),
                                DataColumn(label: Text("Views")),
                                DataColumn(label: Text("Comments")),
                              ],
                              rows: [
                                DataRow(cells: [
                                  DataCell(Text("0111")),
                                  DataCell(Text("World Is Over")),
                                  DataCell(Text("${DateTime.now()}")),
                                  DataCell(Text("12.3K")),
                                  DataCell(Text("10K Comments")),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text("0112")),
                                  DataCell(Text("World Is So madness")),
                                  DataCell(Text("${DateTime.now()}")),
                                  DataCell(Text("4.3K")),
                                  DataCell(Text("1K Comments")),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text("0113")),
                                  DataCell(Text("World Is So Cute")),
                                  DataCell(Text("${DateTime.now()}")),
                                  DataCell(Text("15.3K")),
                                  DataCell(Text("112 Comments")),
                                ]),
                              ]),
                          Row(
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "1",
                                    style: TextStyle(color: Color(0xff10568c)),
                                  )),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "2",
                                    style: TextStyle(color: Color(0xff10568c)),
                                  )),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "3",
                                    style: TextStyle(color: Color(0xff10568c)),
                                  )),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Show All",
                                    style: TextStyle(color: Color(0xff10568c)),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (() {}),
          child: Icon(Icons.add),
          backgroundColor: Color(0xff10568c),
        ));
  }
}
