import 'package:flutter/material.dart';


void main() {
  runApp( MaterialApp(
  debugShowCheckedModeBanner: false,
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
     //AQUI É O ESTILO DE CADA FRASE 
     static const TextStyle opcaoEstilo =
     TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Color.fromARGB(255, 0, 0, 0) );
         
     static const TextStyle opcaoEstilo1 =
     TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 0, 0, 0));

    static const TextStyle opcaoEstilo3 =
     TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 0, 0, 0));

     // criar uma lista de labels
     static const List<Widget> _wdOpcoes =<Widget>[
    Text("Lua",style: opcaoEstilo,),
    Text("Moon",style: opcaoEstilo1,),
    Text(" Fases da Lua ",style: opcaoEstilo3,)
     ];
  
  // LISTA DE IMAGENS 
    static const List <Widget> _wdImagens = <Widget> [
    Image( 
     width: 400,
      height: 400,
    //importando minhas imagens do asset(baixada)
    image: AssetImage("imgs/imagem.jpeg")
    ),
Image(
   width: 400,
   height: 400,
   //importando minhas imagens do asset(baixada)
  image: AssetImage("imgs/imagemm.jpeg") 
),
Image(
  width: 400,
  height: 400,
  //importando minhas imagens do asset(baixada)
  image: AssetImage("imgs/imagens.jpeg"))
   
    ];
   
  void _OnItemTapped(int index){
    setState(() {
      _selectIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
   debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 187, 222, 228),
        
     appBar: AppBar(title: Text("DS 403 app",),backgroundColor: Color.fromARGB(255, 129, 105, 194),
     ),
       
     body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children:[
       //aqui quando apertar cada botão vai aparecer as frases e as imagens 
       _wdOpcoes.elementAt(_selectIndex),
       _wdImagens.elementAt(_selectIndex)
     ]),
    
     
         // AQUI O BOTAO
     bottomNavigationBar: BottomNavigationBar(
       //COR 
       backgroundColor: Color.fromARGB(255, 187, 182, 216),
    //TAMANHO DO ICONE.
      iconSize: 35,
       items: [
         //AQUI SAO BOTOES PRA CADA FUNÇÃO
       
       BottomNavigationBarItem(icon: Icon(Icons.person),label: "Perfil"),
       BottomNavigationBarItem(icon: Icon(Icons.computer),label: "Computer"),
       BottomNavigationBarItem(icon: Icon(Icons.synagogue),label: "Synagogue"),
     ],
     //AQUI É O CURRENT INDEX 
     currentIndex: _selectIndex,
     selectedItemColor: Color.fromARGB(255, 8, 17, 20),
   //CLIQUE DO BOTÃO 
     onTap: _OnItemTapped,
    )));
    
  }
}
