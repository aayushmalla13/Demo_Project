import 'package:demo_project/utilities/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:validators/validators.dart' as validator;
import 'package:multi_image_picker/multi_image_picker.dart';
import 'package:demo_project/models/model.dart';
import 'package:demo_project/screens/results.dart';
import 'dart:async';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _formKey = GlobalKey<FormState>();
  Model model = Model();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Demo Project'),
        ),
        body: SafeArea(
          child: Form(
              key: _formKey,
              child: Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: MyTextFormField(
                            hintText: 'Product Id',
                            validator: (dynamic value) {
                              if (value.isEmpty) {
                                return 'Enter Product Id';
                              }
                              return null;
                            },
                            onSaved: (dynamic value) {
                              model.productId = value;
                            },
                          ),
                        ),
                        Expanded(
                          child: MyTextFormField(
                            hintText: "Product Name",
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Enter Product Name';
                              }
                            },
                            onSaved: (String value) {
                              model.productName = value;
                            },
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: MyTextFormField(
                        hintText: "Enter Manufacture Name",
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Enter Manufacturer Name';
                          }
                          return null;
                        },
                        onSaved: (String value) {
                          model.manufactureName = value;
                        },
                      ),
                    ),
                    Expanded(
                      child: MyTextFormField(
                        hintText: "Enter Model Name",
                        onSaved: (String value) {
                          model.model = value;
                        },
                      ),
                    ),
                    Expanded(
                      child: MyTextFormField(
                        type: TextInputType.number,
                        hintText: "Enter Size ",
                        onSaved: (String value) {
                          model.size = value;
                        },
                      ),
                    ),
                    Expanded(
                      child: MyTextFormField(
                        type: TextInputType.number,
                        hintText: "Enter Price ",
                        validator: (dynamic value) {
                          if (value.isEmpty) {
                            return 'Enter Manufacturer Name';
                          }
                          return null;
                        },
                        onSaved: (String value) {
                          model.size = value;
                        },
                      ),
                    ),
                    Expanded(
                      child: MyTextFormField(
                        hintText: "Enter Description ",
                        validator: (String value) {
                          if (value.length > 250) {
                            return 'Max Length allowed is 250';
                          }
                          return null;
                        },
                        onSaved: (String value) {
                          model.manufactureName = value;
                        },
                      ),
                    ),
                    RaisedButton(
                      color: Colors.blueAccent,
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          _formKey.currentState.save();

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ResultPage(model: this.model)));
                        }
                      },
                    )
                  ],
                ),
              )),
        ));
  }
}
