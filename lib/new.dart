import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'LoginScreen.dart';


class MyJobs extends StatefulWidget {
  const MyJobs({super.key});

  @override
  State<MyJobs> createState() => _MyJobsState();
}

class _MyJobsState extends State<MyJobs> {

  final List<String> projectNames = ['Project EMP', 'Project PMS', 'Project AMS'];

  List<Map<String, dynamic>> cardDataList = [
    {
      'title': 'Front End Design',
      'date': 'March 4, 2023',
      'imageUrl': 'https://as2.ftcdn.net/v2/jpg/04/33/76/69/1000_F_433766963_8gZOOwnAHgrsSl1MMEi4t712X1ZD8d66.jpg',
    },
    {
      'title': 'Back End Development',
      'date': 'March 6, 2023',
      'imageUrl': 'https://as2.ftcdn.net/v2/jpg/04/33/76/69/1000_F_433766963_8gZOOwnAHgrsSl1MMEi4t712X1ZD8d66.jpg',
    },

  ];


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = MediaQuery
        .of(context)
        .size
        .height;
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            const Padding(
              padding: EdgeInsets.only(right: 2.0),
              child: InkWell(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://as2.ftcdn.net/v2/jpg/04/33/76/69/1000_F_433766963_8gZOOwnAHgrsSl1MMEi4t712X1ZD8d66.jpg'),
                ),
              ),
            ),
            PopupMenuButton(
              onSelected: (value) => _logout(context),
              itemBuilder: (BuildContext bc) {
                return const [
                  PopupMenuItem(
                    value: '/logout',
                    child: Text("Logout",
                      style: TextStyle(fontSize: 14.0),),
                  ),
                ];
              },
            ),
          ],
          backgroundColor: Colors.indigo[400],
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Hasthiya",
                style: TextStyle(color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 2),
              ),
              Image.asset(
                'images/img.png',
                height: 40,
                width: 40,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
              ),
              Column(
                children: <Widget>[
              DropdownButton<String>(
              dropdownColor: Colors.indigo[300],
                style: const TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                items: List.generate(
                  projectNames.length,
                      (index) => DropdownMenuItem<String>(
                    value: (index + 1).toString(),
                    child: Center(child: Text(projectNames[index])),
                  ),
                ),
                onChanged: (value) => {
                  print(value.toString()),
                },
                hint: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Projects',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                ),
                icon: const Icon(
                  Icons.arrow_drop_down_circle_outlined,
                  color: Colors.black,
                ),
              )
            ],
              ),
            ],
          ),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'ToDo',
              ),
              Tab(
                text: 'Started',
              ),
              Tab(
                text: 'In Prog',
              ),
              Tab(
                text: 'QA',
              ),
              Tab(
                text: 'Done',
              ),

            ],
          ),
        ),

        body: Container(
          color: Colors.indigo[200],
          child: TabBarView(
            children: [
              Center(
                child: Expanded(
                  child: ListView.builder(
                    itemCount: cardDataList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: width * 0.7,
                        height: height * 0.2,
                        child: Container(
                          margin: EdgeInsets.only(
                            top: width * 0.010,
                            left: width * 0.01,
                            right: width * 0.01,
                          ),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular((15)),
                              side: const BorderSide(
                                  width: 3, color: Colors.black),
                            ),
                            child: ListTile(
                              title: Text(
                                cardDataList[index]['title'],
                                textAlign: TextAlign.left,
                              ),
                              subtitle: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(Icons.calendar_today),
                                  SizedBox(width: 5),
                                  Text(
                                    cardDataList[index]['date'],
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                              trailing: SingleChildScrollView(
                                physics: const NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          cardDataList[index]['imageUrl']),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Center(
                child: Expanded(
                  child: ListView.builder(
                    itemCount: cardDataList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: width * 0.7,
                        height: height * 0.2,
                        child: Container(
                          margin: EdgeInsets.only(
                            top: width * 0.010,
                            left: width * 0.01,
                            right: width * 0.01,
                          ),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular((15)),
                              side: const BorderSide(
                                  width: 3, color: Colors.black),
                            ),
                            child: ListTile(
                              title: Text(
                                cardDataList[index]['title'],
                                textAlign: TextAlign.left,
                              ),
                              subtitle: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(Icons.calendar_today),
                                  SizedBox(width: 5),
                                  Text(
                                    cardDataList[index]['date'],
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                              trailing: SingleChildScrollView(
                                physics: const NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          cardDataList[index]['imageUrl']),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Center(
                child: Expanded(
                  child: ListView.builder(
                    itemCount: cardDataList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: width * 0.7,
                        height: height * 0.2,
                        child: Container(
                          margin: EdgeInsets.only(
                            top: width * 0.010,
                            left: width * 0.01,
                            right: width * 0.01,
                          ),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular((15)),
                              side: const BorderSide(
                                  width: 3, color: Colors.black),
                            ),
                            child: ListTile(
                              title: Text(
                                cardDataList[index]['title'],
                                textAlign: TextAlign.left,
                              ),
                              subtitle: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(Icons.calendar_today),
                                  SizedBox(width: 5),
                                  Text(
                                    cardDataList[index]['date'],
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                              trailing: SingleChildScrollView(
                                physics: const NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          cardDataList[index]['imageUrl']),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Center(
                child: Expanded(
                  child: ListView.builder(
                    itemCount: cardDataList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: width * 0.7,
                        height: height * 0.2,
                        child: Container(
                          margin: EdgeInsets.only(
                            top: width * 0.010,
                            left: width * 0.01,
                            right: width * 0.01,
                          ),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular((15)),
                              side: const BorderSide(
                                  width: 3, color: Colors.black),
                            ),
                            child: ListTile(
                              title: Text(
                                cardDataList[index]['title'],
                                textAlign: TextAlign.left,
                              ),
                              subtitle: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(Icons.calendar_today),
                                  SizedBox(width: 5),
                                  Text(
                                    cardDataList[index]['date'],
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                              trailing: SingleChildScrollView(
                                physics: const NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          cardDataList[index]['imageUrl']),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Center(
                child: Expanded(
                  child: ListView.builder(
                    itemCount: cardDataList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: width * 0.7,
                        height: height * 0.2,
                        child: Container(
                          margin: EdgeInsets.only(
                            top: width * 0.010,
                            left: width * 0.01,
                            right: width * 0.01,
                          ),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular((15)),
                              side: const BorderSide(
                                  width: 3, color: Colors.black),
                            ),
                            child: ListTile(
                              title: Text(
                                cardDataList[index]['title'],
                                textAlign: TextAlign.left,
                              ),
                              subtitle: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(Icons.calendar_today),
                                  SizedBox(width: 5),
                                  Text(
                                    cardDataList[index]['date'],
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                              trailing: SingleChildScrollView(
                                physics: const NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          cardDataList[index]['imageUrl']),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  void _logout(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear(); // clear user authentication token or session data
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => Login()),
          (route) => route.isFirst,
    ); // navigate user back to login screen
  }
}