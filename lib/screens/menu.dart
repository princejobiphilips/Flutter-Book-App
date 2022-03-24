import 'package:books_app/screens/bookEntry.dart';
import 'package:books_app/screens/bookSearch.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 20.0,),
            SizedBox(
              height: 60,
              width: double.infinity,

              child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: BorderSide(color: Colors.amber)
                        )),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.indigo
                    )
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BookEntry() ));
                },
                child: Text("Book Entry",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),
              )),
            ),
            SizedBox(height: 20.0,),
            SizedBox(
              height: 60,
              width: double.infinity,

              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              side: BorderSide(color: Colors.amber)
                          )),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.indigo
                      )
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BookSearch() ));
                  },
                  child: Text("Book Search",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
