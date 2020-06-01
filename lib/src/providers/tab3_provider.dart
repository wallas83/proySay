import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Tab3Provider with ChangeNotifier {
  double monto1 = 0.0;
  double monto2 = 0.0;
  double monto3 = 0.0;
  double result = 0.0;

  getMonto1(String valor) {
    if (valor.isEmpty) {
      this.result = 0.0;
      this.monto1 = 0.0;
    } else {
      this.monto1 = double.parse(valor);
    }

    notifyListeners();
  }

  getMonto2(String valor) {
    if (valor.isEmpty) {
      this.monto2 = 0.0;
      this.result = 0.0;
      //this.monto1 = 0.0;
    } else {
      this.monto2 = double.parse(valor);
    }

    notifyListeners();
  }

  getMonto3(String valor) {
    if (valor.isEmpty) {
      this.result = 0.0;
      this.monto3 = 0.0;
    } else {
      this.monto3 = double.parse(valor);
    }

    notifyListeners();
  }

  double getResult() {
    double resul = (this.monto1 * this.monto2 * this.monto3) / (180 * 270);
    resul.toString();
    notifyListeners();
    return double.parse(resul.toStringAsFixed(3));

    //return resul;
  }

  Future<double> getResultFuture() async {
    double resul = (this.monto1 * this.monto2 * this.monto3) / (180 * 270);
    resul.toString();

    return double.parse(resul.toStringAsFixed(3));

    //return resul;
  }
}
