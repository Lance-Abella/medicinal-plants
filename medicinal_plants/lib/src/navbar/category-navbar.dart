// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicinal_plants/src/constants/colors.dart';

class CategoryNavBar extends StatefulWidget {
  @override
  _CategoryNavBarState createState() => _CategoryNavBarState();
}

class _CategoryNavBarState extends State<CategoryNavBar> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<String> categories = ['Recommended', 'Cough', 'Fever', 'Headache'];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: categories.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              controller: _tabController,
              isScrollable: true,
              tabs: categories.map((category) {
                return Tab(text: category);
              }).toList(),
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(width: 4.0, color: buttonColor),
                insets: EdgeInsets.symmetric(horizontal: 16.0),
              ),
              labelColor: buttonColor,
              unselectedLabelColor: Colors.black,
              tabAlignment: TabAlignment.start,
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: categories.map((category) {
                return GridView.builder(                  
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: width*0.001,
                    mainAxisSpacing: height*0.001,
                  ),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                         onTap: () {
                          Navigator.pushNamed(context, '/detail');
                        },
                        child: Card(
                          child: Stack(
                            children: [
                              
                              Container(
                                margin: EdgeInsets.only(left: width*0.115),
                                child: Image(
                                  image: AssetImage('assets/images/Sample plants.png'),
                                  width: width*0.20,
                                  height: height*0.16,
                                  fit: BoxFit.contain,
                                ),
                              ),
                          
                              Container(
                                margin: EdgeInsets.only(top: height*0.13),
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                    "Monstera",
                                    style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: width*0.035,
                                  )
                                ),
                              ),
                          
                              Container(
                                margin: EdgeInsets.only(top: height*0.15),
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                    "Cough",
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      fontSize: width*0.035,
                                  )
                                ),
                              ),
                          
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}