import 'package:flutter/material.dart';
import 'package:tfmodel/tfmodel.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  var tfmodel = TFModel(
    numerator: "",
    denominator: "",
    showFormatError: false,
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("TF Model Package"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 50,
              ),
              child: Column(
                children: [
                  TextField(
                    onChanged: (String val) {
                      setState(() {
                        tfmodel = tfmodel.copyWith(numerator: val);
                      });
                    },
                  ),
                  TextField(
                    onChanged: (String val) {
                      setState(() {
                        tfmodel = tfmodel.copyWith(denominator: val);
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 80,
            ),
            TFComponent(
              system: tfmodel,
            ),
            SizedBox(
              height: 80,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text(
                      "Transfer Function Numerator: " + tfmodel.toNum,
                      textScaleFactor: 1.5,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text(
                      "Transfer Function Denominator: " + tfmodel.toDen,
                      textScaleFactor: 1.5,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text(
                      "Transfer Function is proper: " +
                          tfmodel.isProper.toString(),
                      textScaleFactor: 1.5,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
