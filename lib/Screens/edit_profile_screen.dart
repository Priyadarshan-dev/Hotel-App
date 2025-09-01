import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_app_ui/Components/text_field_component.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _bioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Back + Title
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        height: screenWidth * 0.1,
                        width: screenWidth * 0.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: Image.asset("assets/images/arrowleft.png"),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.025),
                    Text(
                      "Edit Profile",
                      style: GoogleFonts.sen(
                        fontSize: screenWidth * 0.04,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.02),

                // Profile Pic
                Stack(
                  children: [
                    Container(
                      height: screenHeight * 0.15,
                      width: screenWidth * 0.3,
                      decoration: ShapeDecoration(shape: CircleBorder()),
                      child: Image.asset("assets/images/boy.png"),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: screenWidth * 0.05,
                        backgroundColor: Color(0xFFFF7622),
                        child: Icon(
                          Icons.edit,
                          size: screenWidth * 0.04,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.03),
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.045),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "FULL NAME",
                        style: GoogleFonts.sen(
                          fontSize: screenWidth * 0.035,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                TextFieldComponent(
                  controller: _fullNameController,
                  hintText: "",
                  obscureText: false,
                ),
                SizedBox(height: screenHeight * 0.01),
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.045),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "EMAIL",
                        style: GoogleFonts.sen(
                          fontSize: screenWidth * 0.035,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                TextFieldComponent(
                  controller: _emailController,
                  hintText: "",
                  obscureText: false,
                ),
                SizedBox(height: screenHeight * 0.01),
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.045),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "PHONE NUMBER",
                        style: GoogleFonts.sen(
                          fontSize: screenWidth * 0.035,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                TextFieldComponent(
                  controller: _phoneController,
                  hintText: "",
                  obscureText: false,
                ),
                SizedBox(height: screenHeight * 0.01),
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.045),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "BIO",
                        style: GoogleFonts.sen(
                          fontSize: screenWidth * 0.035,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Container(
                  height: screenHeight * 0.12,
                  width: screenWidth * 0.85,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: screenWidth * 0.02,
                      right: screenWidth * 0.02,
                    ),
                    child: TextField(
                      expands: true,
                      maxLines: null,
                      minLines: null,
                      controller: _bioController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Color(0xFFF6F6F6)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Color(0xFFF6F6F6)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Color(0xFFF6F6F6)),
                        ),
                        filled: true,
                        fillColor: Color(0xFFF6F6F6),
                      ),

                      style: TextStyle(
                        fontSize: screenWidth * 0.035,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.09),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: screenHeight * 0.07,
                    width: screenWidth * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(screenWidth * 0.03),
                      color: Color(0xFFFF7622),
                    ),
                    child: Center(
                      child: Text(
                        "SAVE",
                        style: GoogleFonts.sen(
                          fontSize: screenWidth * 0.04,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
