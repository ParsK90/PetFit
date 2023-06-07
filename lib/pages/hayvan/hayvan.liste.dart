import 'package:flutter/material.dart';
import 'package:pet_fit/parslib/services/service.api.dart';

class HayvanListePage extends StatefulWidget {
  const HayvanListePage({super.key});

  @override
  State<HayvanListePage> createState() => _HayvanListePageState();
}

class _HayvanListePageState extends State<HayvanListePage> {
  final serviceAPI = ServiceAPI("/PetAsi");

  List<dynamic> items = [];

  @override
  initState() {
    super.initState();
    getAll();
  }

  Future<void> getAll() async {
    var result = await serviceAPI.get(id: 1);
    setState(() {
      items = result;
    });
  }

  Future<void> addOrUpdate({dynamic object}) async {
    await serviceAPI.delete(4);
    await getAll();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hayvanlarım"),
        actions: [
          TextButton.icon(
            onPressed: addOrUpdate,
            icon: const Icon(Icons.add),
            label: const Text("Yeni"),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: List.generate(items.length, (index) {
          var item = items[index];
          return ListTile(
            title: Text(item["aciklama"]),
            trailing: IconButton(
              onPressed: () => addOrUpdate(object: item),
              icon: const Icon(Icons.edit, size: 16.0),
            ),
          );
        }),
      ),
    );
  }
}
