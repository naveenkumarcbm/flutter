import 'package:flutter/material.dart';
import 'package:nani/medicine_model.dart';

class MedicineCard extends StatefulWidget {
  final Medicine medicine;

  MedicineCard(this.medicine);

  @override
  _MedicineCardState createState() => _MedicineCardState(medicine);
}

class _MedicineCardState extends State<MedicineCard> {
  Medicine medicine;

  _MedicineCardState(this.medicine);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        FadeInImage.assetNetwork(
          placeholder: 'assets/gif/loading.gif',
          image: 'https://picsum.photos/250?image=9',
        ),
        const ListTile(
          leading: Icon(Icons.album),
          title: Text('Medicine Name'),
          subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
        ),
        ButtonBar(children: <Widget>[
          FlatButton(
            child: const Text('BUY TICKETS'),
            onPressed: () {/* ... */},
          ),
          FlatButton(
            child: const Text('LISTEN'),
            onPressed: () {/* ... */},
          )
        ])
      ],
    ));
    // Text(
    //   widget.medicine.name,
    //   style: Theme.of(context).textTheme.headline,
    //   );
  }

  String renderUrl;

  Widget get dogImage {
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(renderUrl ?? ''),
        ),
      ),
    );
  }

// void initState() {
//   super.initState();
//   renderDogPic();
// }

// void renderDogPic() async {
//   // this makes the service call
//   await med.getImageUrl();
//   // setState tells Flutter to rerender anything that's been changed.
//   // setState cannot be async, so we use a variable that can be overwritten
//   if (mounted) { // Avoid calling `setState` if the widget is no longer in the widget tree.
//     setState(() {
//       renderUrl = dog.imageUrl;
//     });
//   }
// }

}
