import 'package:flutter/material.dart';

import '../models/item_model.dart';

class ObjectKeyPage extends StatefulWidget {
  const ObjectKeyPage({super.key});

  @override
  State<ObjectKeyPage> createState() => _ObjectKeyPageState();
}

class _ObjectKeyPageState extends State<ObjectKeyPage> {
  late List<Item> items;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    items = [
      Item('Apple', Colors.red),
      Item('Banana', Colors.yellow),
      Item('Cherry', Colors.pink),
      Item('Date', Colors.brown),
      Item('Flutter', Colors.blue),
      Item('Dart', Colors.green),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Object Key"),
      ),
      body: ReorderableListView(
        children: items
            .map((item) => ListTile(
          key: ObjectKey(item),
          title: Container(
            color: item.color,
            padding: const EdgeInsets.all(10),
            child: Text(item.name,),
          ),
          trailing: IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              setState(() => items.remove(item));
            },
          ),
        ))
            .toList(),
        onReorder: (oldIndex, newIndex) {
          setState(() {
            if (newIndex > oldIndex) {
              newIndex -= 1;
            }
            final item = items.removeAt(oldIndex);
            items.insert(newIndex, item);
          });
        },
      ),
    );
  }
}