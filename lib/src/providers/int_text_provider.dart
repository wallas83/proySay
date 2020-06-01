import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IntTextProvider with ChangeNotifier {

    double monto1 = 0.0;
    double monto2 = 0.0;
    double result = 0.0;
    int selected = 0;

     List<DropdownMenuItem<int>> listDrop = List();

     futureLoad()async{
         await loadData();

       
     }

     loadData(){
       listDrop = [];
        listDrop.add( DropdownMenuItem(
        child: Text('Seleccione'),
        value: 0,)
        );
        listDrop.add( DropdownMenuItem(
        child: Text('2.5 mm'),
        value: 90,)
        );

        listDrop.add(new DropdownMenuItem(
        child: Text('3 mm'),
        value: 100,)
        );
        listDrop.add(new DropdownMenuItem(
        child: Text('4 mm'),
        value: 150,)
        );
        listDrop.add(new DropdownMenuItem(
        child: Text('6 mm'),
        value: 160,)
        );
        listDrop.add(new DropdownMenuItem(
        child: Text('9 mm'),
        value: 220,)
        );
      
    }
       getSelectedDrop(int value){
      
      this.selected = value;
      
      notifyListeners();
    }

  getMonto1(String valor){
    if(valor.isEmpty){
      this.result = 0.0;
      this.monto1 = 0.0;
    } else{
         this.monto1  = double.parse(valor);
         
    
    }

      notifyListeners();
  }

    getMonto2(String valor){
      if(valor.isEmpty){
      this.monto2 = 0.0;
      this.result = 0.0;
      //this.monto1 = 0.0;
    } else{
         this.monto2  = double.parse(valor);
    
    }

      
      notifyListeners();
  }

  double getResult(){

    double resul = (this.monto1 * this.monto2 * this.selected) / (180 * 270) ;
    resul.toString();
    notifyListeners();
    return double.parse(resul.toStringAsFixed(3)); 

  //return resul;
  }

   Future<double> getResultFuture() async{

    double resul = (this.monto1 * this.monto2 * this.selected) / (180 * 270) ;
     resul.toString();
 
    return double.parse(resul.toStringAsFixed(3)); 

  //return resul;
  }

 

}