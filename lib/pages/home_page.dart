import 'dart:convert';

//import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //List dummyList = List.generate(50, (index) => CatalogModel.items[0]);
  List myItem = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogData = await rootBundle.loadString('files/catalog.json');
    final decodedData = jsonDecode(catalogData);
    myItem = decodedData['products'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //This is how we can design appbar
        // backgroundColor: Colors.white,
        // elevation: 0.0,
        // iconTheme: const IconThemeData(
        //   color: Colors.black,
        // ),
        title: const Text(
          'Catalog App',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: myItem.length,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 90,
              //width: MediaQuery.of(context).size.width,
              // child: Text(myItem[index]['price'].toString()),
              child: Card(
                child: ListTile(
                  onTap: () {
                    print('You pressed ${myItem[index]['name']}');
                  },
                  leading: Image.network(
                    myItem[index]['image'],
                  ),
                  title: Text(
                    myItem[index]['name'],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                  subtitle: Text(
                    myItem[index]['desc'],
                    style: const TextStyle(color: Colors.black),
                  ),
                  trailing: Text(
                    '\$' + myItem[index]['price'].toString(),
                    style: const TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
