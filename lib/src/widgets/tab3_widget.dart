import 'package:conve_say/src/providers/tab3_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Tab3 extends StatefulWidget {
  const Tab3({Key key}) : super(key: key);

  @override
  _Tab3State createState() => _Tab3State();
}

class _Tab3State extends State<Tab3> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(20.0),
      children: <Widget>[_Resultado(), _Inputs1(), _Inputs2(), _Inputs3()],
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

class _Resultado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final result = Provider.of<IntTextProvider>(context);
    return Container(
      height: 130,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
      decoration: BoxDecoration(
          // boxShadow: [

          //   BoxShadow(color: Colors.red, spreadRadius: 2.0,blurRadius: 4.0)
          // ],
          color: Colors.brown[100],
          borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Resultado:',
              style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black54,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                // SizedBox(width: 50.0,),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0, left: 20.0),
                  child: Text(
                    'Bs.',
                    style: TextStyle(color: Colors.black54, fontSize: 41.0),
                  ),
                ),

                Consumer<Tab3Provider>(
                    builder: (BuildContext context, snapshot, _) {
                  return FutureBuilder(
                      future: snapshot.getResultFuture(),
                      builder: (BuildContext context, snapshotText) {
                        return Text(
                          snapshotText.data.toString(),
                          style:
                              TextStyle(color: Colors.black87, fontSize: 50.0),
                        );
                      });
                })
                // Text(
                //   result.getResult().toString(),
                //   style: TextStyle(color: Colors.black87, fontSize: 50.0),
                // )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _Inputs1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: Colors.black12, style: BorderStyle.solid)),
      child: Column(
        children: <Widget>[_InputText1()],
      ),
    );
  }
}

class _InputText1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final monto1 = Provider.of<Tab3Provider>(context);
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(hintText: "1 dimensión"),
      validator: (value) {
        if (value.isEmpty) {
          return 'Por favor ingrese un número  ';
        }
        return null;
      },
      onChanged: (String value) {
        try {
          monto1.getMonto1(value);
        } catch (e) {}
      },
    );
  }
}

class _Inputs2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: Colors.black12, style: BorderStyle.solid)),
      child: Column(
        children: <Widget>[_InputText2()],
      ),
    );
  }
}

class _InputText2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final monto2 = Provider.of<Tab3Provider>(context);
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(hintText: "2 dimensión"),
      validator: (value) {
        if (value.isEmpty) {
          return 'Por favor ingrese un número  ';
        }
        return null;
      },
      onChanged: (String value) {
        try {
          monto2.getMonto2(value);
        } catch (e) {}
      },
    );
  }
}

class _Inputs3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: Colors.black12, style: BorderStyle.solid)),
      child: Column(
        children: <Widget>[_InputText3()],
      ),
    );
  }
}

class _InputText3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final monto3 = Provider.of<Tab3Provider>(context);
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(hintText: "Precio"),
      validator: (value) {
        if (value.isEmpty) {
          return 'Por favor ingrese un número  ';
        }
        return null;
      },
      onChanged: (String value) {
        try {
          monto3.getMonto3(value);
        } catch (e) {}
      },
    );
  }
}
