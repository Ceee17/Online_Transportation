import 'package:flutter/material.dart';
import 'package:project_uts_online_transportation/pages/account_page.dart';
import 'package:project_uts_online_transportation/pages/chatpage.dart';
import 'package:project_uts_online_transportation/pages/landingpage.dart';
import 'package:project_uts_online_transportation/pages/order_page.dart';
import 'package:project_uts_online_transportation/pages/template/LeftToRightFadetransition.dart';
import 'package:project_uts_online_transportation/pages/template/template_nav_bar.dart';

import 'template/RightToLeftFadetransition.dart';

class HomeChatPage extends StatefulWidget {
  const HomeChatPage({super.key});

  @override
  _HomeChatPageState createState() => _HomeChatPageState();
}

class _HomeChatPageState extends State<HomeChatPage> {
  TextEditingController _searchController = TextEditingController();
  String searchText = '';
  List<Message> chatMessages = [];

  List<String> contacts = [
    "Richard",
    "Deni",
    "Celin",
    "Joko",
    "Jefri",
    "Loli",
    "Jordi",
    "Lesti",
    "Joni",
    "Rudi",
  ];

  List<String> filteredContacts = [];

  late PageController _pageController;
  int _selectedIndex = 1;

  @override
  void initState() {
    super.initState();
    filteredContacts = contacts;
    _pageController = PageController(initialPage: _selectedIndex);
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => LandingPage(),
          //   ),
          // );
          Navigator.of(context).push(
            LeftToRightFadeTransition(page: LandingPage()),
          );

        case 2:
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => OrderPage(),
          //   ),
          // );
          Navigator.of(context).push(
            RightToLeftFadeTransition(page: OrderPage()),
          );

        case 3:
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => AccountPage(),
          //   ),
          // );
          Navigator.of(context).push(
            RightToLeftFadeTransition(page: AccountPage()),
          );
      }
    });
    _pageController.animateToPage(
      _selectedIndex,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOutQuad,
    );
  }

  void _searchContacts() {
    setState(() {
      filteredContacts = contacts
          .where((contact) =>
              contact.toLowerCase().contains(searchText.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff213A82),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          homeChatPageContent(),
        ],
      ),
      bottomNavigationBar: CustomNavBar(
        selectedIndex: _selectedIndex,
        onItemSelected: _onItemTapped,
      ),
    );
  }

  Column homeChatPageContent() {
    return Column(
      children: [
        Container(
          height: 85,
          width: 420,
          child: Stack(
            children: [
              Positioned(
                left: 40,
                bottom: 10,
                child: Text(
                  "Chat",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 20,
                child: Image.asset(
                  'lib/assets/images/undraw_Chat_re_re1u.png',
                  width: 50,
                  height: 50,
                ),
              ),
              Positioned(
                top: 25,
                right: 5,
                child: Container(
                  height: 50,
                  width: 280,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _searchController,
                          onChanged: (value) {
                            setState(() {
                              searchText = value;
                            });
                          },
                          onEditingComplete: _searchContacts,
                          decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle: TextStyle(color: Colors.white),
                          ),
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      GestureDetector(
                        onTap: _searchContacts,
                        child: Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Color(0xff213A82),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 18,
          child: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: filteredContacts
                    .map((contact) => _buildContact(
                          "lib/assets/images/undraw_Pic_profile_re_7g2h.png",
                          contact,
                          "Pesan Terbaru",
                          "09.00",
                        ))
                    .toList(),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildContact(
      String pngAsset, String name, String lastMessage, String time) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(pngAsset),
      ),
      title: Text(
        name,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: [
          Icon(Icons.done_all),
          SizedBox(width: 3),
          Text(
            lastMessage,
            style: TextStyle(fontSize: 13),
          )
        ],
      ),
      trailing: Text(time),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatScreen(
              contactName: name,
              contactImage: pngAsset,
            ),
          ),
        );
      },
    );
  }
}

class Message {
  final String text;
  final bool isMe;

  Message(this.text, this.isMe);
}
