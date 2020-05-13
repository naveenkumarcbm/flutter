import 'package:flutter/material.dart';
import 'package:nani/medicine_model.dart';
import 'package:nani/widget/medicine_card.dart';

class MedicineHome extends StatefulWidget {
  MedicineHome({Key key, this.title}) : super(key: key);
  final String title;
  _MedicineState createState() => new _MedicineState();
}

class _MedicineState extends State<MedicineHome> {
  List<Medicine> initMedicines = []
    ..add(Medicine(
        name: 'Dolo', description: 'Cure for fever', imageUrl: '', rating: 10))
    ..add(Medicine(
        name: 'Citrizine',
        description: 'Cure for cold',
        imageUrl: '',
        rating: 10));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Medicines List'),
          backgroundColor: Colors.black87,
        ),
        body: GridView.count(
            crossAxisCount: 1,
            children: List.generate(10, (index) {
              return 
          //     FadeInImage.assetNetwork(
          //   placeholder: 'assets/gif/loading.gif',
          //   image: 'https://picsum.photos/250?image=9',
          // );
              Center(
                child: MedicineCard(initMedicines[0]),
              );
            })));
  }
}
