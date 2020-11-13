import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

void main() => runApp(MyApp());

enum ThemeStyle {
  Dribbble,
  Light,
  NoElevation,
  AntDesign,
  BorderRadius,
  FloatingBar,
  NotificationBadge
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Navigation Bar Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  ThemeStyle _currentStyle = ThemeStyle.NotificationBadge;

  List<int> _badgeCounts = List<int>.generate(5, (index) => index);

  List<bool> _badgeShows = List<bool>.generate(5, (index) => true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody for floating bar get better perfomance
      extendBody: true,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: const Text('Notification badge'),
              leading: Radio(
                value: ThemeStyle.NotificationBadge,
                groupValue: _currentStyle,
                onChanged: (ThemeStyle value) {
                  setState(() {
                    _currentStyle = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Dribbble'),
              leading: Radio(
                value: ThemeStyle.Dribbble,
                groupValue: _currentStyle,
                onChanged: (ThemeStyle value) {
                  setState(() {
                    _currentStyle = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Light'),
              leading: Radio(
                value: ThemeStyle.Light,
                groupValue: _currentStyle,
                onChanged: (ThemeStyle value) {
                  setState(() {
                    _currentStyle = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('No elevation'),
              leading: Radio(
                value: ThemeStyle.NoElevation,
                groupValue: _currentStyle,
                onChanged: (ThemeStyle value) {
                  setState(() {
                    _currentStyle = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Custom Icon from Ant Design'),
              leading: Radio(
                value: ThemeStyle.AntDesign,
                groupValue: _currentStyle,
                onChanged: (ThemeStyle value) {
                  setState(() {
                    _currentStyle = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('With border radius'),
              leading: Radio(
                value: ThemeStyle.BorderRadius,
                groupValue: _currentStyle,
                onChanged: (ThemeStyle value) {
                  setState(() {
                    _currentStyle = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Floating Bar'),
              leading: Radio(
                value: ThemeStyle.FloatingBar,
                groupValue: _currentStyle,
                onChanged: (ThemeStyle value) {
                  setState(() {
                    _currentStyle = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    switch (_currentStyle) {
      case ThemeStyle.Dribbble:
        return _buildOriginDesign();
      case ThemeStyle.Light:
        return _buildLightDesign();
      case ThemeStyle.AntDesign:
        return _buildCustomIconDesign();
      case ThemeStyle.BorderRadius:
        return _buildBorderRadiusDesign();
      case ThemeStyle.FloatingBar:
        return _buildFloatingBar();
      case ThemeStyle.NoElevation:
        return _buildNoElevation();
      case ThemeStyle.NotificationBadge:
        return _buildNotificationBadge();
      default:
        return _buildOriginDesign();
    }
  }

  Widget _buildNotificationBadge() {
    print("notification");
    return CustomNavigationBar(
      iconSize: 30.0,
      selectedColor: Color(0xff040307),
      strokeColor: Color(0x30040307),
      unSelectedColor: Color(0xffacacac),
      backgroundColor: Colors.white,
      items: [
        CustomNavigationBarItem(
          icon: Icons.home,
          badgeCount: _badgeCounts[0],
          showBadge: _badgeShows[0],
        ),
        CustomNavigationBarItem(
          icon: Icons.shopping_cart,
          badgeCount: _badgeCounts[1],
          showBadge: _badgeShows[1],
        ),
        CustomNavigationBarItem(
          icon: Icons.lightbulb_outline,
          badgeCount: _badgeCounts[2],
          showBadge: _badgeShows[2],
        ),
        CustomNavigationBarItem(
          icon: Icons.search,
          badgeCount: _badgeCounts[3],
          showBadge: _badgeShows[3],
        ),
        CustomNavigationBarItem(
          icon: Icons.account_circle,
          badgeCount: _badgeCounts[4],
          showBadge: _badgeShows[4],
        ),
      ],
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
          _badgeShows[index] = false;
        });
      },
    );
  }

  Widget _buildOriginDesign() {
    return CustomNavigationBar(
      iconSize: 30.0,
      selectedColor: Colors.white,
      strokeColor: Colors.white,
      unSelectedColor: Color(0xff6c788a),
      backgroundColor: Color(0xff040307),
      items: [
        CustomNavigationBarItem(
          icon: Feather.home,
        ),
        CustomNavigationBarItem(
          icon: Feather.file_plus,
        ),
        CustomNavigationBarItem(
          icon: Feather.globe,
        ),
        CustomNavigationBarItem(
          icon: Feather.file_text,
        ),
        CustomNavigationBarItem(
          icon: Feather.calendar,
        ),
      ],
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }

  Widget _buildLightDesign() {
    return CustomNavigationBar(
      // Featherize: 30.0,
      selectedColor: Color(0xff040307),
      strokeColor: Color(0x30040307),
      unSelectedColor: Color(0xffacacac),
      backgroundColor: Colors.white,
      items: [
        CustomNavigationBarItem(
          icon: Feather.home,
        ),
        CustomNavigationBarItem(
          icon: Feather.file_plus,
        ),
        CustomNavigationBarItem(
          icon: Feather.globe,
        ),
        CustomNavigationBarItem(
          icon: Feather.file_text,
        ),
        CustomNavigationBarItem(
          icon: Feather.calendar,
        ),
      ],
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }

  Widget _buildNoElevation() {
    return CustomNavigationBar(
      elevation: 0.0,
      iconSize: 30.0,
      selectedColor: Color(0xff625aff),
      strokeColor: Color(0xff625aff),
      unSelectedColor: Colors.white,
      backgroundColor: Color(0xffa9a5f2),
      items: [
        CustomNavigationBarItem(
          icon: Icons.home,
        ),
        CustomNavigationBarItem(
          icon: Icons.shopping_cart,
        ),
        CustomNavigationBarItem(
          icon: Icons.lightbulb_outline,
        ),
        CustomNavigationBarItem(
          icon: Icons.search,
        ),
        CustomNavigationBarItem(
          icon: Icons.account_circle,
        ),
      ],
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }

  Widget _buildCustomIconDesign() {
    return CustomNavigationBar(
      iconSize: 30.0,
      selectedColor: Color(0xff0c18fb),
      strokeColor: Color(0x300c18fb),
      unSelectedColor: Colors.grey[600],
      backgroundColor: Colors.white,
      items: [
        CustomNavigationBarItem(
          icon: Feather.home,
        ),
        CustomNavigationBarItem(
          icon: Feather.file_plus,
        ),
        CustomNavigationBarItem(
          icon: Feather.globe,
        ),
        CustomNavigationBarItem(
          icon: Feather.file_text,
        ),
        CustomNavigationBarItem(
          icon: Feather.calendar,
        ),
      ],
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }

  Widget _buildBorderRadiusDesign() {
    return CustomNavigationBar(
      iconSize: 30.0,
      selectedColor: Color(0xff0c18fb),
      strokeColor: Color(0x300c18fb),
      unSelectedColor: Colors.grey[600],
      backgroundColor: Colors.white,
      borderRadius: Radius.circular(20.0),
      items: [
        CustomNavigationBarItem(
          icon: Feather.home,
        ),
        CustomNavigationBarItem(
          icon: Feather.file_plus,
        ),
        CustomNavigationBarItem(
          icon: Feather.globe,
        ),
        CustomNavigationBarItem(
          icon: Feather.file_text,
        ),
        CustomNavigationBarItem(
          icon: Feather.calendar,
        ),
      ],
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }

  Widget _buildFloatingBar() {
    return CustomNavigationBar(
      iconSize: 30.0,
      selectedColor: Color(0xff0c18fb),
      strokeColor: Color(0x300c18fb),
      unSelectedColor: Colors.grey[600],
      backgroundColor: Colors.white,
      borderRadius: Radius.circular(20.0),
      items: [
        CustomNavigationBarItem(
          icon: Feather.home,
        ),
        CustomNavigationBarItem(
          icon: Feather.file_plus,
        ),
        CustomNavigationBarItem(
          icon: Feather.globe,
        ),
        CustomNavigationBarItem(
          icon: Feather.file_text,
        ),
        CustomNavigationBarItem(
          icon: Feather.calendar,
        ),
      ],
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      isFloating: true,
    );
  }
}
