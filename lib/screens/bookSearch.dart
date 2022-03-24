import 'package:books_app/screens/menu.dart';
import 'package:flutter/material.dart';

class BookSearch extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
    body: Container(
    child: Column(
    children: <Widget>[
      SizedBox(height: 20,),
      TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.book_online_outlined),
            labelText: "Book Title",
            hintText: "Book Title",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
            )
        ),
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
            },
            child: Text("Search",
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Menu() ));
            },
            child: Text("Back to Menu",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
              ),
            )),
      ),
  ],
    ),
    ),
    ),
    );
  }
}
