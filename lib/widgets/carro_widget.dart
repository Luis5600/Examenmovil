import 'package:flutter/material.dart';
import '../models/carro.dart';

class CarroWidget extends StatelessWidget {
  final Carro carro;
  final Function onTap;
  final Function onSwipe;
  final Function onLongPress;

  const CarroWidget(
      {Key? key,
      required this.carro,
      required this.onTap,
      required this.onSwipe,
      required this.onLongPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (DragEndDetails details) {
        onSwipe(carro.id);
      },
      onLongPress: () {
        onLongPress(carro.id);
      },
      onTap: () {
        onTap(carro);
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        height: 80.0,
        child: ListTile(
          title: Text(carro.modelo),
          subtitle: Text(carro.marca),
          leading: Image.network(carro.fotoUrl),
          trailing: Icon(Icons.arrow_forward_rounded),
        ),
      ),
    );
  }
}
