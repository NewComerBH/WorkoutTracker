import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

Widget tag(String caption, onTap, color) {
  return Stack(
    children: [
      SizedBox(
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 3.0,
            horizontal: 3.0,
          ),
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(20),
            child:Container(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Text(caption,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

Widget CardButton(color, text, onTap)
{
  return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      margin: EdgeInsets.fromLTRB(8, 0, 8, 0),
      color: color,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new InkWell(
                borderRadius: BorderRadius.circular(8.0),
                onTap: onTap,
                child: ListTile(
                    title: Text(text,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    )
                )
            )
          ]
      )
  );
}