import 'package:flutter/material.dart';

import '../constans.dart';
import '../models/backend.dart';
import '../models/carro.dart';
import '../widgets/carro_widget.dart';
import 'detailScreen.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  var carros = Backend().getCarros();

  void deleteCarro(int id) {
    Backend().deleteCarro(id);
    setState(() {
      carros = Backend().getCarros();
    });
  }

  void showDetail(Carro carro) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DetailScreen(carro: carro);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: carros.length,
        itemBuilder: (BuildContext context, int index) => CarroWidget(
            carro: carros[index],
            onTap: showDetail,
            onLongPress: showDetail,
            onSwipe: deleteCarro),
      ),
    );
  }
}
