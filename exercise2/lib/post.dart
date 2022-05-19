// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';
import 'post_user_template.dart';

class Post extends StatelessWidget {

  // final String userName = "";

  @override
  Widget build(BuildContext context) {
    
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        child: Container(
            decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xFFCEDDE1))),
            child: Column(
              children: [
                UserTemplate("Admin"),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                    child: Divider(
                      thickness: 1.5,
                      color: Color(0xFFCEDDE1),
                      indent: 15,
                      endIndent: 15,
                    )
                ),
                UserTemplate("Theodore"),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 15, 20),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              flex: 2,
                              child: Image(
                                  width: 30,
                                  height: 30,
                                  image: AssetImage('assets/user.png'))),
                          Expanded(
                              flex: 8,
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('You',
                                        style: TextStyle(
                                            fontSize: 16, fontWeight: FontWeight.w500)),
                                  ),
                                  TextField(  
                                    decoration: InputDecoration(  
                                      border: OutlineInputBorder(),  
                                      hintText: 'Leave a comment',
                                      hintStyle: TextStyle(fontSize: 14)
                                    ),  
                                  ),   
                                ],
                              )
                            )
                        ],
                      ),
                    ],
                  )
                )
              ],
            )
          )
        );
  }
}
