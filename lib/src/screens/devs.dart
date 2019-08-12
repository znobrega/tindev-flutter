import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tindev_flutter/src/screens/work.dart';

class Devs extends StatelessWidget {
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
        Expanded(
          child: Container(
            margin: EdgeInsets.only(top: 30, left: 30, right: 30),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 6.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(6)),
            child: Column(
              children: <Widget>[
                Expanded(
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(6),
                            topRight: Radius.circular(6)),
                        child: Image.asset("assets/dog.jpg", fit: BoxFit.cover),
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
                  "Loasdasdreming and typesetting industry.\nLorem ipsum has bad asd asd asd aaA PIPO DPLQWEM seen the",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 14.0),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 80,
        )
      ],
    );
  }

  Widget buildBottomBar(context) {
    return Row(
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
            onPressed: () {},
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
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Devs2()));
            },
            elevation: 0,
            color: Colors.transparent,
            child: SvgPicture.asset(
              "assets/like.svg",
            ),
          ),
        ),
      ],
    );
  }
}
