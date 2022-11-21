import 'package:flutter/material.dart';

import '../constans.dart';
import '../models/carro.dart';
import 'listScreen.dart';

class DetailScreen extends StatelessWidget {
  final Carro carro;

  const DetailScreen({Key? key, required this.carro}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(carro.modelo),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                  height: 500, width: 500, child: Image.network(carro.fotoUrl)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Año del carro: ${carro.ano}',
                    textAlign: TextAlign.justify, style: textStyle),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Modelo del carro: ${carro.modelo}',
                    textAlign: TextAlign.justify, style: textStyle),
              ),
              ElevatedButton(
                  onPressed: (() {
                    Navigator.pop(context);
                  }),
                  child: Text(
                    "Volver al inicio",
                    style: textStyle,
                  ))
            ],
          ),
        ));
  }
}
