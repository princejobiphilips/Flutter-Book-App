import 'package:books_app/screens/menu.dart';
import 'package:flutter/material.dart';


class BookEntry extends StatelessWidget {

  TextEditingController bname = TextEditingController();
  TextEditingController author = TextEditingController();
  TextEditingController distributor = TextEditingController();
  TextEditingController publisher = TextEditingController();
  TextEditingController price = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20,),
              TextField(
                controller: bname,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_box),
                    labelText: "Book Title",
                    hintText: "Book Title",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: author,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: "Author",
                    hintText: "Author",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: distributor,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_box),
                    labelText: "Distributor",
                    hintText: "Distributor",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: publisher,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_box),
                    labelText: "Publisher",
                    hintText: "Publisher",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: price,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_box),
                    labelText: "Price",
                    hintText: "Price",
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
                      var getBookName=bname.text;
                      var getAuthor=author.text;
                      var getDistributor = distributor.text;
                      var getPublisher = publisher.text;
                      var getPrice = price.text;

                      print(getBookName);
                      print(getAuthor);
                      print(getPublisher);
                      print(getDistributor);
                      print(getPrice);

                    },
                    child: Text("Submit",
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
                    child: Text("Back to Menu ",
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
