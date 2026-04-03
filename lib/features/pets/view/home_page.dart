import 'package:flutter/material.dart';
import 'package:whisker_trail/features/pets/model/pet.dart';
import 'package:whisker_trail/features/pets/view/add_missing_pet.dart';
import 'package:whisker_trail/features/pets/viewmodel/pet_viewmodel.dart';
import 'package:whisker_trail/main.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final vm = context.watch<PetViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Pets"),
      ),
      body: Center(
          child: vm.pets.isNotEmpty
              ? ListView.builder(
                  itemCount: vm.pets.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 50,
                      child: Center(child: Text(vm.pets[index].name)),
                    );
                  })
              : Text("Nothing to display")),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Pet? result = await Navigator.push(
              context, MaterialPageRoute(builder: (_) => AddMissingPet()));

          if (result != null) {
            setState(() {
              vm.addMissingPet(result);
            });
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
