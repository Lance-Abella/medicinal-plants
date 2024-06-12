// ignore_for_file: avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicinal_plants/src/constants/colors.dart';

class AddPlantScreen extends StatefulWidget {

  const AddPlantScreen({super.key});

  @override
  State<AddPlantScreen> createState() => _AddPlantScreenState();
}

class _AddPlantScreenState extends State<AddPlantScreen> {
  String? _selectedItem;

  final List<String> _dropdownItems = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/navbar');
              },
              child: Container(
                margin: EdgeInsets.only(left: width*0.04, top: height*0.042),
                child: Image(
                  image: AssetImage('assets/icons/Back.png'),
                    width: width*0.06,
                    height: height*0.06,
                    fit: BoxFit.contain,
                ),
              ),
            ),
        
            Container(
              margin: EdgeInsets.only(left: width*0.20, top: height*0.04),
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Add Medicinal Plants",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: width*0.055,
                )
              ),
            ),
        
            Container(
              margin: EdgeInsets.only(left: width*0.05, top: height*0.12),
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Upload Image",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: width*0.043,
                )
              ),
            ),
        
            Container(
              margin: EdgeInsets.only(left: width*0.06, top: height*0.16),
              width: width*0.87,
              height: height*0.20,
              child: Image(
                image: AssetImage('assets/icons/Upload.png'),
                  fit: BoxFit.contain,
              ),
            ),
        
            Container(
              margin: EdgeInsets.only(left: width*0.05, top: height*0.36),
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Information",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: width*0.043,
                )
              ),
            ),
        
            Container(
              margin: EdgeInsets.only(left: width*0.06, top: height*0.40),
              width: width*.874,
              child: SingleChildScrollView(
                child: TextField(
                  maxLines: null,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 205, 211, 205),
                    contentPadding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
                    hintText: "Input Information of the Plant",
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 128, 127, 127),
                      fontSize: width*0.035,
                    ),
                
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none,
                  ),
                
                  ),
                ),
              ),
            ),
        
            Container(
              margin: EdgeInsets.only(left: width*0.05, top: height*0.52),
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Medicinal Plant Name",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: width*0.043,
                )
              ),
            ),
        
            Container(
              margin: EdgeInsets.only(left: width*0.06, top: height*0.56),
              width: width*.874,
              child: TextField(              
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 205, 211, 205),
                  contentPadding: EdgeInsets.symmetric(vertical: 14.5, horizontal: 20.0),
                  hintText: "Medicinal Plant Name",
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 128, 127, 127),
                    fontSize: width*0.035,
                  ),
              
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none,
                ),
              
                ),
              ),
            ),
        
            Container(
              margin: EdgeInsets.only(left: width*0.05, top: height*0.635),
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Category",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: width*0.043,
                )
              ),
            ),
        
        
            Container(
              width: width*.874,
              margin: EdgeInsets.only(left: width*0.06, top: height*0.68),
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Color.fromARGB(255, 205, 211, 205),
              ),
              child: DropdownButton<String>(
                value: _selectedItem,
                hint: Text(
                  'Select Category', 
                  style: TextStyle(
                    color: Color.fromARGB(255, 128, 127, 127),
                    fontSize: width*0.035
                  ),),
                isExpanded: true,
                underline: SizedBox(), 
                onChanged: (newValue) {
                  setState(() {
                    _selectedItem = newValue;
                  });
                },
                items: _dropdownItems.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
              ),
            ),
        
            Container(
              margin: EdgeInsets.only(left: width*0.05, top: height*0.75),
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Scientific Name",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: width*0.043,
                )
              ),
            ),
        
            Container(
              margin: EdgeInsets.only(left: width*0.06, top: height*0.79),
              width: width*.874,
              child: TextField(              
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 205, 211, 205),
                  contentPadding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 20.0),
                  hintText: "Scientific Name",
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 128, 127, 127),
                    fontSize: width*0.035,
                  ),
              
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none,
                ),
              
                ),
              ),
            ),
        
            Center(
              child: Container(
                width: width*.71,
                height: height*.0678,
                decoration: BoxDecoration(
                  color: buttonColor,
                  borderRadius: BorderRadius.circular(10)
                ),
                margin: EdgeInsets.only(top: height*0.88),
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    "SAVE",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: width*0.050,
                    )
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}