import 'package:cocktail_app/main.dart';
import 'package:flutter/material.dart';

class DrinkDetails extends StatelessWidget {
  final drink;

  const DrinkDetails({Key key, @required this.drink}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [myColor, Colors.blue])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(drink["strDrink"]),
          elevation: 0.0,
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Hero(
              tag: drink["idDrink"],
              child: CircleAvatar(
                backgroundImage: NetworkImage(drink["strDrinkThumb"]),
                radius: 100.0,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              "ID: ${drink["idDrink"]}",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 25.0),
            Center(
              child: Text(
                "${drink["strDrink"]}",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
