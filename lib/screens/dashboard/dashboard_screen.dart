import 'package:flutter/material.dart';
import 'package:heroService/screens/bottomnav/booking_screen.dart';
import 'package:heroService/screens/bottomnav/home_screen.dart';
import 'package:heroService/screens/bottomnav/market_screen.dart';
import 'package:heroService/screens/bottomnav/setting_screen.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({Key key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  // สร้างตัวแปร list เก็บรายการ tab
  int _currentIndex = 0;
  String _title = "บริการ";

  final List<Widget> _childen = [
    HomeScreen(),
    MarketScreen(),
    BookingScreen(),
    SettingScreen()
  ];

  // สร้าง func ที่ใช้ในการเปลี่ยนหน้า
  void onTabpped(int index) {
    setState(() {
      _currentIndex = index;

      // เปลี่ยน title
      switch (index) {
        case 0:
          _title = 'บริการ';

          break;
        case 1:
          _title = 'ตลาด';

          break;
        case 2:
          _title = 'รายการจอง';

          break;
        case 3:
          _title = 'อื่นๆ';

          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('$_title')),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabpped,
        type: BottomNavigationBarType.fixed,
        // backgroundColor: Colors.teal,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.business_center,
              //color: Colors.white,
            ),
            title: Text(
              "บริการ",
              style: TextStyle(
                  //color: Colors.white,
                  ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              //color: Colors.white,
            ),
            title: Text(
              "ตลาด",
              style: TextStyle(
                  //color: Colors.white,
                  ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.library_books,
              //color: Colors.white,
            ),
            title: Text(
              "รายการจอง",
              style: TextStyle(
                  //color: Colors.white,
                  ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
              //color: Colors.white,
            ),
            title: Text(
              "อื่นๆ",
              style: TextStyle(
                  //color: Colors.white,
                  ),
            ),
          ),
        ],
      ),
      body: _childen[_currentIndex],
    );
  }
}
