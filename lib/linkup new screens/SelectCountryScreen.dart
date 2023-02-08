import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkup_newscreens/linkup%20new%20screens/NavigationScreens/DrawerScreen.dart';


class SelectCountryScreen extends StatefulWidget {
  const SelectCountryScreen({super.key});

  @override
  State<SelectCountryScreen> createState() => _SelectCountryScreenState();
}

class _SelectCountryScreenState extends State<SelectCountryScreen> {
  late int selectedRadioTile;

   @override
  void initState() {
    super.initState();
    selectedRadioTile = 0;
  }

  setSelectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color.fromARGB(255, 56, 171, 216),
          centerTitle: true,
          title: Text(
            "Select Country",
            style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Icon(Icons.search),
            )
          ],
        ),
        drawer: Drawer(
          child: DrawerScreen(),
        ),
        body: SafeArea(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 15),
                child: Text("B",style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
              ),
              RadioListTile(
                tileColor: Colors.grey.withOpacity(0.1),
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              value: 1,
              groupValue: selectedRadioTile,
              title: Row(
                children: [
                  Text(
                    "Bahamas, The",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                
                ],
              ),
              // subtitle: Text("Radio 1 Subtitle"),
              onChanged: (val) {
                print("Radio Tile pressed $val");
                setSelectedRadioTile(val!);
              },
            ),
            RadioListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              value: 2,
              groupValue: selectedRadioTile,
              title: Row(
                children: [
                  Text(
                    "Bahrain",
                     style: TextStyle(color: Color.fromARGB(255, 139, 139, 139)),
                  ),
                
                ],
              ),
              // subtitle: Text("Radio 1 Subtitle"),
              onChanged: (val) {
                print("Radio Tile pressed $val");
                setSelectedRadioTile(val!);
              },
            ),
            RadioListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              value: 3,
              groupValue: selectedRadioTile,
              title: Row(
                children: [
                  Text(
                    "Bangladesh",
                     style: TextStyle(color: Color.fromARGB(255, 139, 139, 139)),
                  ),
                
                ],
              ),
              // subtitle: Text("Radio 1 Subtitle"),
              onChanged: (val) {
                print("Radio Tile pressed $val");
                setSelectedRadioTile(val!);
              },
            ),
            RadioListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              value: 4,
              groupValue: selectedRadioTile,
              title: Row(
                children: [
                  Text(
                    "Barbados",
                     style: TextStyle(color: Color.fromARGB(255, 139, 139, 139)),
                  ),
                
                ],
              ),
              // subtitle: Text("Radio 1 Subtitle"),
              onChanged: (val) {
                print("Radio Tile pressed $val");
                setSelectedRadioTile(val!);
              },
            ),
             RadioListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              value: 5,
              groupValue: selectedRadioTile,
              title: Row(
                children: [
                  Text(
                    "Belarus",
                     style: TextStyle(color: Color.fromARGB(255, 139, 139, 139)),
                  ),
                
                ],
              ),
              // subtitle: Text("Radio 1 Subtitle"),
              onChanged: (val) {
                print("Radio Tile pressed $val");
                setSelectedRadioTile(val!);
              },
            ),
             RadioListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              value: 6,
              groupValue: selectedRadioTile,
              title: Row(
                children: [
                  Text(
                    "Belgium",
                     style: TextStyle(color: Color.fromARGB(255, 139, 139, 139)),
                  ),
                
                ],
              ),
              // subtitle: Text("Radio 1 Subtitle"),
              onChanged: (val) {
                print("Radio Tile pressed $val");
                setSelectedRadioTile(val!);
              },
            ),
            RadioListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              value: 7,
              groupValue: selectedRadioTile,
              title: Row(
                children: [
                  Text(
                    "Belize",
                     style: TextStyle(color: Color.fromARGB(255, 139, 139, 139)),
                  ),
                
                ],
              ),
              // subtitle: Text("Radio 1 Subtitle"),
              onChanged: (val) {
                print("Radio Tile pressed $val");
                setSelectedRadioTile(val!);
              },
            ),
             RadioListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              value: 8,
              groupValue: selectedRadioTile,
              title: Row(
                children: [
                  Text(
                    "Benin",
                     style: TextStyle(color: Color.fromARGB(255, 139, 139, 139)),
                  ),
                
                ],
              ),
              // subtitle: Text("Radio 1 Subtitle"),
              onChanged: (val) {
                print("Radio Tile pressed $val");
                setSelectedRadioTile(val!);
              },
            ),
             RadioListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              value: 9,
              groupValue: selectedRadioTile,
              title: Row(
                children: [
                  Text(
                    "Bhutan",
                     style: TextStyle(color: Color.fromARGB(255, 139, 139, 139)),
                  ),
                
                ],
              ),
              // subtitle: Text("Radio 1 Subtitle"),
              onChanged: (val) {
                print("Radio Tile pressed $val");
                setSelectedRadioTile(val!);
              },
            ),
            RadioListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              value: 10,
              groupValue: selectedRadioTile,
              title: Row(
                children: [
                  Text(
                    "Bolivia",
                     style: TextStyle(color: Color.fromARGB(255, 139, 139, 139)),
                  ),
                
                ],
              ),
              // subtitle: Text("Radio 1 Subtitle"),
              onChanged: (val) {
                print("Radio Tile pressed $val");
                setSelectedRadioTile(val!);
              },
            ),
            RadioListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              value: 11,
              groupValue: selectedRadioTile,
              title: Row(
                children: [
                  Text(
                    "Bosnia and Herzegovina",
                     style: TextStyle(color: Color.fromARGB(255, 139, 139, 139)),
                  ),
                
                ],
              ),
              // subtitle: Text("Radio 1 Subtitle"),
              onChanged: (val) {
                print("Radio Tile pressed $val");
                setSelectedRadioTile(val!);
              },
            ),
            RadioListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              value: 12,
              groupValue: selectedRadioTile,
              title: Row(
                children: [
                  Text(
                    "Botswana",
                     style: TextStyle(color: Color.fromARGB(255, 139, 139, 139)),
                  ),
                
                ],
              ),
              // subtitle: Text("Radio 1 Subtitle"),
              onChanged: (val) {
                print("Radio Tile pressed $val");
                setSelectedRadioTile(val!);
              },
            ),
            RadioListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              value: 13,
              groupValue: selectedRadioTile,
              title: Row(
                children: [
                  Text(
                    "Brazil",
                     style: TextStyle(color: Color.fromARGB(255, 139, 139, 139)),
                  ),
                
                ],
              ),
              // subtitle: Text("Radio 1 Subtitle"),
              onChanged: (val) {
                print("Radio Tile pressed $val");
                setSelectedRadioTile(val!);
              },
            ),
            RadioListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              value: 14,
              groupValue: selectedRadioTile,
              title: Row(
                children: [
                  Text(
                    "Brunei",
                     style: TextStyle(color: Color.fromARGB(255, 139, 139, 139)),
                  ),
                
                ],
              ),
              // subtitle: Text("Radio 1 Subtitle"),
              onChanged: (val) {
                print("Radio Tile pressed $val");
                setSelectedRadioTile(val!);
              },
            ),
            ],
          )),
      ),
    );
  }
}