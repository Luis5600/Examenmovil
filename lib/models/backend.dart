import 'carro.dart';

class Backend {
  static final Backend _backend = Backend._internal();

  factory Backend() {
    return _backend;
  }

  Backend._internal();

  final _cars = [
    Carro(
        id: 1,
        modelo: 'MUSTANG',
        marca: 'FORD',
        ano: '2015',
        fotoUrl:
            'https://upload.wikimedia.org/wikipedia/commons/1/1f/2019_Ford_Mustang_GT_5.0_facelift.jpg'),
    Carro(
        id: 2,
        modelo: '2300',
        marca: 'BOBCAT',
        ano: '2009',
        fotoUrl:
            'https://images.equipmentlocator.com/equipment/3336248-0001.jpg'),
    Carro(
        id: 3,
        modelo: 'SAVANA 1500',
        marca: 'GMC',
        ano: '2011',
        fotoUrl:
            'https://img2.carmax.com/img/vehicles/mmy-gmc-savana-1500-2014/1.jpg?width=900'),
    Carro(
        id: 4,
        modelo: 'XPEDITOR WXLL',
        marca: 'AUTOCAR LLC.',
        ano: '2004',
        fotoUrl:
            'https://cdn.ironpla.net/i/2598/58/2598058_3945_159_0001-hr.jpg'),
    Carro(
        id: 5,
        modelo: 'MUSTANG',
        marca: 'FORD',
        ano: '2015',
        fotoUrl:
            'https://upload.wikimedia.org/wikipedia/commons/1/1f/2019_Ford_Mustang_GT_5.0_facelift.jpg'),
    Carro(
        id: 6,
        modelo: '2300',
        marca: 'BOBCAT',
        ano: '2009',
        fotoUrl:
            'https://images.equipmentlocator.com/equipment/3336248-0001.jpg'),
    Carro(
        id: 7,
        modelo: 'SAVANA 1500',
        marca: 'GMC',
        ano: '2011',
        fotoUrl:
            'https://img2.carmax.com/img/vehicles/mmy-gmc-savana-1500-2014/1.jpg?width=900'),
    Carro(
        id: 8,
        modelo: 'XPEDITOR WXLL',
        marca: 'AUTOCAR LLC.',
        ano: '2004',
        fotoUrl:
            'https://cdn.ironpla.net/i/2598/58/2598058_3945_159_0001-hr.jpg'),
  ];

  List<Carro> getCarros() {
    return _cars;
  }

  void deleteCarro(int id) {
    _cars.removeWhere((car) => car.id == id);
  }
}
