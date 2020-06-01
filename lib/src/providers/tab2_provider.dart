import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Tab2Provider with ChangeNotifier {

    double monto1Tab2 = 0.0;
    double monto2Tab2 = 0.0;
    double resultTab2 = 0.0;
    int selectedTab2 = 0;

     List<DropdownMenuItem<int>> listDropTab2 = List();

     futureLoadTab2()async{
         await loadDataTab2();

       
     }

     loadDataTab2(){
       listDropTab2 = [];
        listDropTab2.add( DropdownMenuItem(
        child: Text('Seleccione'),
        value: 0,)
        );
        listDropTab2.add( DropdownMenuItem(
        child: Text('2.0 mm'),
        value: 520,)
        );

        listDropTab2.add(new DropdownMenuItem(
        child: Text('3 mm'),
        value: 690,)
        );
        listDropTab2.add(new DropdownMenuItem(
        child: Text('5 mm'),
        value: 1000,)
        );
      
    }
       getSelectedDropTab2(int value){
      
      this.selectedTab2 = value;
      
      notifyListeners();
    }

  getMonto1Tab2(String valor){
    if(valor.isEmpty){
      this.resultTab2 = 0.0;
      this.monto1Tab2 = 0.0;
    } else{
         this.monto1Tab2  = double.parse(valor);
         
    
    }

      notifyListeners();
  }

    getMonto2Tab2(String valor){
      if(valor.isEmpty){
      this.monto2Tab2 = 0.0;
      this.resultTab2 = 0.0;
      //this.monto1 = 0.0;
    } else{
         this.monto2Tab2  = double.parse(valor);
    
    }

      
      notifyListeners();
  }

  double getResultTab2(){

    double resul = (this.monto1Tab2 * this.monto2Tab2 * this.selectedTab2) / (120 * 240) ;
    resul.toString();
    notifyListeners();
    return double.parse(resul.toStringAsFixed(3)); 

  //return resul;
  }

   Future<double> getResultFutureTab2() async{

    double resul = (this.monto1Tab2 * this.monto2Tab2 * this.selectedTab2) / (120 * 240) ;
     resul.toString();
 
    return double.parse(resul.toStringAsFixed(3)); 

  //return resul;
  }

 

}