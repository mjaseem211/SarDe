import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build (BuildContext context) {
    final double buttonHeight = 50;

    Widget _buildCard(BuildContext context) {
      return Center(
        child: Container(
          height: 200 + buttonHeight,
          child: Stack(
            alignment: Alignment.center,
            overflow: Overflow.visible,
            // although the overflow button is visible, but it's overflow part will not be clickable.
            // to solve this, set the height of the container to be larger enough to include the button.
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: BorderSide(color: Colors.blueGrey, width: 0.5),
                ),
                child: Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * .65,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * .80,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Genel Durum",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            letterSpacing: 0.3,
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 0.3,
                        endIndent: 10,
                        indent: 10,
                      ),
//                  Expanded(
//                    // Remove the Stack widget? seems redundant
//                    child: _buildChart(dataList),
//                  ),
                      SizedBox(
                        height: 20,
                      ),
//                  _buildSubGraph(),
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  bottom: -buttonHeight / 2,
                  child:
                  _buildDetailsButton()),
              // Positioned should be place under the Stack Widget
            ],
          ),
        ),
      );
    }

    Widget _buildDetailsButton() {
      return ButtonTheme(
        height: 50,
        minWidth: 100,
        child: RaisedButton(
          onPressed: () {},
          color: Colors.white24,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text("Detayları Gör"),
        ),
      );
    }
  }
}