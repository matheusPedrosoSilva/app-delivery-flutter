import 'package:flutter/material.dart';

class ProdutosScreen extends StatefulWidget {
  const ProdutosScreen({super.key});

  @override
  State<ProdutosScreen> createState() => _ProdutosScreenState();
}

class _ProdutosScreenState extends State<ProdutosScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFDF4F4),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'EXPLORAR',
                        style: TextStyle(
                          fontSize: 9, 
                          color: Colors.grey
                        )
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Buscar',
                        style: TextStyle(
                          fontSize: 26, 
                          fontWeight: FontWeight.bold
                        ) 
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Buscar",
                      prefixIcon: const Icon(Icons.search, color: Color(0xFFD32F2F)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(
                          color: Color(0xFFD32F2F),
                          width: 1.5,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Filtros",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  SizedBox(
                    height: 80,
                    child: CarouselView(
                      itemExtent: 160,
                      children: [
                        filtros("Todos"),
                        filtros("Próximos"),
                        filtros("Entrega rápida"),
                        filtros("Melhor avaliação"),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Resultados",
                        style: TextStyle(
                          fontSize: 18, 
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        "3 Itens",
                        style: TextStyle(
                          fontSize: 12, 
                        ),
                      ),
                    ],
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SizedBox(height: 15,),
                          SizedBox(
                            height: 114,
                              child: produto("Produto 1", "Descrição simples", "29,90"),
                          ),
                          SizedBox(height: 15,),
                          SizedBox(
                            height: 114,
                              child: produto("Produto 2", "Descrição simples", "59,90"),
                          ),
                          SizedBox(height: 15,),
                          SizedBox(
                            height: 114,
                              child: produto("Produto 3", "Descrição simples", "69,90"),
                          )
                        ],
                      );
                    },
                    
                  )
                ],
              )
            ],
          ),
        )
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: 1,
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home), label: "Home"
            ),
            NavigationDestination(
              icon: Icon(Icons.search), 
              label: "Buscar"
            ),
            NavigationDestination(
              icon: Icon(Icons.receipt_long_outlined),
              label: "Pedidos",
              
            ),
            NavigationDestination(icon: Icon(Icons.person), label: "Perfil"),
          ],
        ),
    );
  }
}

Widget produto(String nome, String descricao, String valor){
  return Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      border: Border.all(color: const Color(0xFFE0E0E0)),
    ),
    child: Row(
      children: [
        Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            color: const Color(0xFFFFE1E1),
            borderRadius: BorderRadius.circular(14),
          ),
          child: const Icon(
            Icons.room_service,
            size: 42,
            color: Color(0xFFD32F2F),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nome,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                descricao,
                style: const TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 8),
              Text(
                "R\$ $valor",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFD32F2F),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 8),
        const Icon(Icons.add_circle, color: Color(0xFFD32F2F), size: 22),
      ],
    ),
  );
}

Widget filtros(String title) {
  return Container(
    height: 80,
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: const Color(0xFFFFF0F0),
      borderRadius: BorderRadius.circular(16),
      border: Border.all(color: const Color(0xFFE57373)),
    ),
    child: Center(
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Color(0xFFB71C1C),
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}