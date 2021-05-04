import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BuildApp(),
    );
  }
}

class BuildApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final statusbarSize = MediaQuery.of(context).padding.top;

    ///LayoutBuilder --> Constrains --> maxHeight*0.4,maxWidth

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          actions: [
            Icon(
              Icons.notification_important,
              color: Colors.white,
              size: 30,
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Requests",
              ),
              Tab(
                text: "Approvals",
              ),
            ],
          ),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) => SafeArea(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Leave',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'visa',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Insurance',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '...',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Container(
                  height: constraints.maxHeight * 0.8,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              height: 200,
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              left: 40,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 200,
                                    color: Colors.red,
                                    child: Center(
                                      child: Text(
                                        'MEDICAL LEAVE',
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Leave Request",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.red),
                                  ),
                                  Text(
                                    'Health Condition not ok',
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                  ),
                                  Text(
                                    'From 22-08-2020 to 23-08-2020',
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 30,
                              right: 35,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '# 21242',
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                  ),
                                  Text(
                                    '# 22-08-2020',
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 12,
                              right: 20,
                              child: Container(
                                child: Row(
                                  children: [
                                    Text('ACCEPT |',
                                        style:
                                            TextStyle(color: Colors.white70)),
                                    Text(' REJECT |',
                                        style:
                                            TextStyle(color: Colors.white70)),
                                    Text(' FORWARD ',
                                        style: TextStyle(color: Colors.white70))
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),

                /* Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 17),
                      height: 200,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 40,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 50,
                            width: 200,
                            color: Colors.red,
                            child: Center(
                              child: Text(
                                'MEDICAL LEAVE',
                                style:
                                    TextStyle(fontSize: 16, color: Colors.white),
                              ),
                            ),
                          ),
                          Text(
                            "Leave Request",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.red),
                          ),
                          Text(
                            'Health Condition not ok',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                          Text(
                            'From 22-08-2020 to 23-08-2020',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 30,
                      right: 35,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '# 21242',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                          Text(
                            '# 22-08-2020',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom:12,
                      right:20,
                      child: Container(
                        child: Row(
                          children: [
                            Text('ACCEPT ',style: TextStyle(color: Colors.white70)),
                            SizedBox(
                              height: 10,
                            width: 2,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                            ),),
                            Text(' REJECT ',style: TextStyle(color: Colors.white70)),
                            SizedBox(
                              height: 10,
                              width: 2,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                              ),),
                            Text(' FORWARD ',style: TextStyle(color: Colors.white70),)],
                        ),
                      ),
                    )
                  ],
                ),*/
                /*  SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 17),
                      height: 200,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 40,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 50,
                            width: 200,
                            color: Colors.red,
                            child: Center(
                              child: Text(
                                'MEDICAL LEAVE',
                                style:
                                    TextStyle(fontSize: 16, color: Colors.white),
                              ),
                            ),
                          ),
                          Text(
                            "Leave Request",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.red),
                          ),
                          Text(
                            'Health Condition not ok',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                          Text(
                            'From 22-08-2020 to 23-08-2020',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 30,
                      right: 35,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '# 21242',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                          Text(
                            '# 22-08-2020',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 12,
                      right: 20,
                      child: Container(
                        child: Row(
                          children: [
                            Text('ACCEPT |',
                                style: TextStyle(color: Colors.white70)),
                            Text(' REJECT |',
                                style: TextStyle(color: Colors.white70)),
                            Text(' FORWARD ',
                                style: TextStyle(color: Colors.white70))
                          ],
                        ),
                      ),
                    )
                  ],
                ),*/
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.deepPurpleAccent,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.redAccent),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school, color: Colors.white),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.accessible, color: Colors.redAccent),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
