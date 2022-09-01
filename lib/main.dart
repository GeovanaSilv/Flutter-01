import 'package:flutter/material.dart';


void main() {
  runApp( MaterialApp(
 
   home: appHome(),

  ));
}
class appHome extends StatefulWidget {
  const appHome({ Key? key }) : super(key: key);

  @override
  _appHomeState createState() => _appHomeState();
}

class _appHomeState extends State<appHome> {
     int _selectIndex=0;
     static const TextStyle opcaoEstilo =
     TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Colors.blueAccent );
         
     static const TextStyle opcaoEstilo1 =
     TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 172, 128, 62));

    static const TextStyle opcaoEstilo3 =
     TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 148, 81, 211));

     // criar uma lista de labels
     static const List<Widget> _wdOpcoes =<Widget>[
    Text("Indice 0: Perfil",style: opcaoEstilo,),
    Text("Indice 1 Alarme",style: opcaoEstilo1,),
    Text("Indice 2: Viagem",style: opcaoEstilo3,)
     ];
   
   
  void _OnItemTapped(int index){
    setState(() {
      _selectIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       
      home: Scaffold(
     appBar: AppBar(title: Text("DS 403 app")
     ),
       
     body: Center(child: _wdOpcoes.elementAt(_selectIndex)),
     
         
     bottomNavigationBar: BottomNavigationBar(
      iconSize: 35,
       items: [
       BottomNavigationBarItem(icon: Icon(Icons.person),label: "Perfil"),
       BottomNavigationBarItem(icon: Icon(Icons.alarm),label: "Alarme"),
       BottomNavigationBarItem(icon: Icon(Icons.card_travel),label: "Mala"),
     ],
     currentIndex: _selectIndex,
     selectedItemColor: Color.fromARGB(255, 16, 126, 170),
     onTap: _OnItemTapped,
    )));
    
  }
}
