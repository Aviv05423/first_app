import 'package:first_app/DropdownButtonFormField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class signUpForm extends StatefulWidget {
  const signUpForm({Key? key}) : super(key: key);

  @override
  _signUpFormState createState() => _signUpFormState();
}

class _signUpFormState extends State<signUpForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFF63BA66),
      // backgroundColor: Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Text("בחר סניף:"),
            // Icon(Icons.ac_unit),
            Padding(
                padding: EdgeInsets.all(25.0),
                child: Center(
                    child: Column(children: [
                  SizedBox(height: 40),
                  Icon(Icons.business_center, color: Colors.green, size: 135),
                  SizedBox(
                    height: 13,
                  ),
                  Text("שלום לך",
                      style:
                          TextStyle(fontSize: 45, fontWeight: FontWeight.bold)),
                  Text("בחר סניף והמשך",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      )),
                  SizedBox(height: 20),
                ]))),
            Container(
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: TextFormField(
                    enableSuggestions: false,
                    autocorrect: false,
                    obscureText: true,
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        FontAwesomeIcons.lock,
                        size: 30,
                      ),
                      labelText: "סיסמא",
                      labelStyle:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                    )),
              ),
            ),

            Directionality(
              textDirection: TextDirection.rtl,
              child: FormBuilderDropdown(
                name: 'gender',
                decoration: InputDecoration(
                  labelText: 'Gender',
                ),
                // initialValue: 'Male',
                allowClear: false,
                hint: Text('Select Gender'),
                validator: FormBuilderValidators.compose(
                    [FormBuilderValidators.required(context)]),
                items: ["genderOptions", "genderOptions1"]
                    .map((gender) => DropdownMenuItem(
                          value: gender,
                          child: Text('$gender'),
                        ))
                    .toList(),
              ),
            ),

            // initialValue: 'Male',

            // Container(
            //     child: DropdownButtonField()
            // )
          ],
        ),
      ),
    );
  }
}

//
