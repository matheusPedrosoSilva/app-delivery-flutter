import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text("Entregar em", style: TextStyle(fontSize: 14)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Rua um, n 2",style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(width: 8),
                    Text("Alterar", style: TextStyle(fontSize: 16)),
                    OutlinedButton(onPressed: (){}, child: Text("Carrinho")),
                  ],
                ),
                SizedBox(height: 24),
                Text("Ola Usuario"),
                SizedBox(height: 24),
                Text("O que voce deseja pedir hoje?", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                SizedBox(height: 24),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    suffixIcon: Icon(
                      Icons.search

                    ),
                    prefix: Text("Buscar | "),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.deepOrange, Colors.white]
                    ),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.yellowAccent),
                  ),
                  child:
                    Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Destaque", style: TextStyle(fontSize: 14, color: Colors.grey)),
                              SizedBox(height: 6,),
                              Text("Pizza em promocao", style: TextStyle(fontSize: 20),),
                              SizedBox(height: 4,),
                              Text("Sabor item", style: TextStyle(fontSize: 16),),
                              SizedBox(height: 16,),
                              OutlinedButton(onPressed: (){}, child: Text("Ver promocao"))
                            ],
                          ),
                        ),
                        Image.network("https://placehold.co/200x125/000000/FFF/png"),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Categorias", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Ver todas",
                      ),
                    ],
                  ),
                  SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _item("Item 1"),
                      _item("Item 2"),
                      _item("Item 3"),
                      _item("Item 4")
                    ],
                  ),
                  SizedBox(height: 24,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Produtos em destaque"),
                      Text("Ver todos")
                    ],
                  ),
                  SizedBox(
                    height: 600,
                    child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.symmetric(vertical: 8),
                        padding: EdgeInsets.symmetric(vertical: 8),
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(16)
                        ),
                        child: Center(
                          child: Text("Promocao $index"),
                        ),
                      ),
                    ),
                  )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Buscar",),
          BottomNavigationBarItem(icon: Icon(Icons.receipt_long_outlined), label: "Pedidos",),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil",)
        ]),
      );
  }
}

Widget _item(String titulo){
  return 
  Container(

    height: 65,
    width: 65,
    decoration: BoxDecoration(
      color: Colors.amber,
      border: Border.all(color: Colors.blue),
      borderRadius: BorderRadius.circular(16)
    ),
    child: Text(
      titulo, style: TextStyle(color: Colors.blueGrey),
    ),
  );
}