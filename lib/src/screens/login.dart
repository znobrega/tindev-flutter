import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;

import 'package:tindev_flutter/src/screens/devs.dart';
import 'package:tindev_flutter/src/screens/work.dart';


class Login extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            'assets/logo.svg',
          ),
          SizedBox(height: 30,),
          Container(
            height: 60,
            width: 335,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Digite seu usuário do Github",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 60,
            width: 335,
            child: RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Devs2()));
              },
              color: Color(0xffDF4723),
              textColor: Colors.white,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(9.0)),
              child: Text("Login",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
            ),
          )
        ],
      ),
    );
  }

}
