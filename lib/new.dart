import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyJobs extends StatefulWidget {
  @override
  State<MyJobs> createState() => _MyJobsState();
}

class _MyJobsState extends State<MyJobs> {
  var _date;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return DefaultTabController(
        length: 5,
        child: Scaffold(
            appBar: AppBar(
              leading: ElevatedButton(
                onPressed: () {
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.black,
                ),
              ),
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "My Jobs",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              centerTitle: true,
              bottom: TabBar(
                tabs: [
                  Tab(
                    text: 'ToDo',
                  ),
                  Tab(
                    text: 'Started',
                  ),
                  Tab(
                    text: 'In Progress',
                  ),
                  Tab(
                    text: 'QA',
                  ),
                  Tab(
                    text: 'Done',
                  )
                ],
              ),
            ),
            body: TabBarView(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(
                        top: width * 0.05, right: width * 0.05, left: width * 0.05),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: width * 2,
                              height: height * 0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.purple[300],
                              ),
                              child: Container(
                                margin: EdgeInsets.only(
                                  top: width * 0.045,
                                  left: width * 0.03,
                                  right: width * 0.03,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Font Page Design",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),

                                      ],
                                    ),


                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [


                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(
                        top: width * 0.05, right: width * 0.05, left: width * 0.05),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: width * 2,
                              height: height * 0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.purple[300],
                              ),
                              child: Container(
                                margin: EdgeInsets.only(
                                  top: width * 0.07,
                                  left: width * 0.03,
                                  right: width * 0.03,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Saman Silva",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Vehicle fault : ",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Tyre punch",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Vehicle type : ",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Van",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Vehicle number : ",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "WP-2021",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Contact Number : ",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "0712345678",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Date : ",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "12.01.2022",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),

                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              elevation: 5),
                                          onPressed: () {
                                            print('Navigate to View page');
                                          },
                                          child: Text('View'),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                Center(
                  child: Container(
                    margin: EdgeInsets.only(
                        top: width * 0.05, right: width * 0.05, left: width * 0.05),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: width * 2,
                              height: height * 0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.purple[300],
                              ),
                              child: Container(
                                margin: EdgeInsets.only(
                                  top: width * 0.07,
                                  left: width * 0.03,
                                  right: width * 0.03,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Saman Silva",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Vehicle fault : ",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Tyre punch",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Vehicle type : ",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Van",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Vehicle number : ",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "WP-2021",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Contact Number : ",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "0712345678",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Date : ",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "12.01.2022",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Amount : ",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Rs. 2000",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),


                                  ],
                                ),
                              ),
                            ),

                            SizedBox(
                              height: height * 0.01,
                            ),

                            Container(
                              width: width * 2,
                              height: height * 0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.purple[300],
                              ),
                              child: Container(
                                margin: EdgeInsets.only(
                                  top: width * 0.07,
                                  left: width * 0.03,
                                  right: width * 0.03,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "A.C. Perera",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Vehicle fault : ",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Dead Battery",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Vehicle type : ",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Car",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Vehicle number : ",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "BBC-3456",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Contact Number : ",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "0765432189",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Date : ",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "12.01.2022",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Amount : ",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Rs. 2500",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),


                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                Center(
                  child: Container(
                    margin: EdgeInsets.only(
                        top: width * 0.05, right: width * 0.05, left: width * 0.05),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: width * 2,
                              height: height * 0.2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.purple[300],
                              ),
                              child: Container(
                                margin: EdgeInsets.only(
                                  top: width * 0.07,
                                  left: width * 0.03,
                                  right: width * 0.03,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Mahela Jayawardana",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "Cancelled",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),

                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Text(
                                            "Not available at that moment ",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),

                                      ],
                                    ),


                                  ],
                                ),
                              ),
                            ),

                            SizedBox(
                              height: height * 0.01,
                            ),

                            Column(
                                children: [
                                  Container(
                                    width: width * 2,
                                    height: height * 0.2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: Colors.purple[300],
                                    ),
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        top: width * 0.07,
                                        left: width * 0.03,
                                        right: width * 0.03,
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Sangeeth Amalka",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 22.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                "Cancelled",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),

                                            ],
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(12.0),
                                                child: Text(
                                                  "Not available at that moment ",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 18.0,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                              ),

                                            ],
                                          ),


                                        ],
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    height: height * 0.01,
                                  ),

                                ]
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(
                        top: width * 0.05, right: width * 0.05, left: width * 0.05),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: width * 2,
                              height: height * 0.2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.purple[300],
                              ),
                              child: Container(
                                margin: EdgeInsets.only(
                                  top: width * 0.07,
                                  left: width * 0.03,
                                  right: width * 0.03,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "chamodi",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "call",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),

                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Text(
                                            "Not available ",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),

                                      ],
                                    ),


                                  ],
                                ),
                              ),
                            ),

                            SizedBox(
                              height: height * 0.01,
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                ),

              ],

            ),
        ),
    );
  }
}