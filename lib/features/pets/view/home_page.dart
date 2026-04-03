import 'package:flutter/material.dart';
import 'package:whisker_trail/features/pets/model/pet.dart';
import 'package:whisker_trail/features/pets/view/add_missing_pet.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Pet> pets = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pets"),
      ),
      body: Center(
          child: pets.isNotEmpty
              ? ListView.builder(
                  itemCount: pets.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 50,
                      child: Center(child: Text(pets[index].name)),
                    );
                  })
              : Text("Nothing to display")),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Pet? result = await Navigator.push(
              context, MaterialPageRoute(builder: (_) => AddMissingPet()));

          if (result != null) {
            setState(() {
              pets.add(result);
            });
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
