import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'devs.dart';

class Devs2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(context), body: buildBody(context),
    bottomSheet: buildBottomBar(context));
  }

  Widget buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Center(
        child: SvgPicture.asset("assets/logo.svg"),
      ),
      leading: IconButton(
        color: Colors.black,
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: <Widget>[
        IconButton(
          color: Colors.black,
          icon: Icon(Icons.more_vert),
          onPressed: () {},
        )
      ],
    );
  }

  Widget buildBody(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 30),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 30
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: Column(
              children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/dog.jpg"),
                            fit: BoxFit.cover
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          )
                        ),
                      ),
                    ),
                SizedBox(height: 20.0),
                Text(
                  "Carlos Nóbrega",
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 24.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  "Trocando asd asd asd asd asd as dLoasdasdrem ipsudfsdfsdfxt of e sdf sdf sdf  the \nprinting and typesetting industry.\nLoremA SJHDAS JHDKASJ HDKAJS HKDH KASJD KAJSD A LKDJ LASDJ LAKSDJ LASKJD LASKJD LASKJD LKASJD  ipsum has been the",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 14.0),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 80,)
      ],
    );
  }

  Widget buildBottomBar(BuildContext context) {
    return Container(
      color: Color(0xfff5f5f5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 6.0)]),
            child: RaisedButton(
              onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Devs()));
              },
              elevation: 0,
              color: Colors.transparent,
              child: SvgPicture.asset(
                "assets/dislike.svg",
              ),
            ),
          ),
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 6.0)]),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Devs()));
              },
              elevation: 0,
              color: Colors.transparent,
              child: SvgPicture.asset(
                "assets/like.svg",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
