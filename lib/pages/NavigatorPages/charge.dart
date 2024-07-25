import 'package:flutter/material.dart';
import 'package:tagyourtaxi_driver/functions/functions.dart';

class Charged extends StatelessWidget {
  Charged({Key? key}) : super(key: key);
  var txtcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 60, left: 50, right: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back)),
                SizedBox(
                  width: 70,
                ),
                Text(
                  'اضافه المال',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 250,
              child: TextField(
                controller: txtcontroller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(

                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                sendCharge(txtcontroller.text);
                txtcontroller.clear();
              },
              child: Container(
                height: 40,
                width: 170,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orangeAccent),
                child: Center(
                  child: Text(
                    'اشحن',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
