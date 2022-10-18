import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, initialIndex: 0, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            backgroundColor: Colors.blue,
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  child: CircleAvatar(
                    maxRadius: 150,
                    minRadius: 120,
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      'assets/images/school.jpg',
                      width: double.infinity,
                      alignment: Alignment.center,
                      cacheHeight: 109,
                      cacheWidth: 115,
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.dashboard),
                  title: const Text('Dashboard'),
                  onTap: () {
                    Navigator.pushNamed(context, '/DashBoard');
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.mark_as_unread_sharp),
                  title: const Text('Attendance'),
                  onTap: () {
                    Navigator.pushNamed(context, '/Attendance');
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.mark_as_unread_sharp),
                  title: const Text('Fees'),
                  onTap: () {
                    Navigator.pushNamed(context, '/Fees');
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.punch_clock),
                  title: const Text('Routine'),
                  onTap: () {
                    Navigator.pushNamed(context, '/Routine');
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.abc),
                  title: const Text('Exam'),
                  onTap: () {
                    Navigator.pushNamed(context, '/Exam');
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text('Students'),
                  onTap: () {
                    Navigator.pushNamed(context, '/students');
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.notification_add),
                  title: const Text('NoticeBoard'),
                  onTap: () {
                    Navigator.pushNamed(context, '/classes');
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.message),
                  title: const Text('Massages'),
                  onTap: () {
                    Navigator.pushNamed(context, '/classes');
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.graphic_eq_sharp),
                  title: const Text('Revenue'),
                  onTap: () {
                    Navigator.pushNamed(context, '/classes');
                  },
                ),
              ],
            )),
        appBar: AppBar(
          title: const Text('School Name'),
          actions: const <Widget>[
            Icon(Icons.search),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
            ),
            Icon(
              Icons.more_vert,
            )
          ],
        ),
        body: Text('admin'));
  }
}
