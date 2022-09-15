import 'package:catalog_app/models/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item items;

  const ItemWidget({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 5.0,
        child: ListTile(
          onTap: () => print('${items.name} pressed'),
          leading: Image.network(items.image),
          title: Text(items.name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),),
          subtitle: Text(items.desc, ),
          trailing: Text(items.price, style: const TextStyle(fontWeight: FontWeight.bold,
              color: Colors.deepPurple, fontSize: 20.0),),
        ),
      ),
    );
  }
}
