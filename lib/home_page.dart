import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(),
        body: buildBody(),
      ),
    );
  }

  buildBody(){
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: ListView(
        children: [
          buildCard('Pacote Cancún 2025', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d8/Cancun_Strand_Luftbild_%2822143397586%29.jpg/960px-Cancun_Strand_Luftbild_%2822143397586%29.jpg',),
          buildCard('Pacote New York 2025','https://media.tacdn.com/media/attractions-splice-spp-674x446/07/3b/51/37.jpg'),
          buildCard('Pacote Madeira 2025','https://viagemeturismo.abril.com.br/wp-content/uploads/2017/03/istock-camara-de-lobos-ilha-da-madeira-portugal.jpg?crop=1&resize=1212,909'),
        ],
      ),
    );
  }

  buildCard(String titulo, String url){
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
            child: Image.network(
              url
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              spacing: 8,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Text('Aéreo + Hotel All Inclusive.', style: TextStyle(color: Colors.grey[700]),),
                Row(
                  children: [
                    Icon(Icons.wb_sunny_outlined, color: Colors.grey[700],),
                    Text('5 Diárias.', style: TextStyle(color: Colors.grey[700]),),
                    Icon(Icons.person_outlined, color: Colors.grey[700],),
                    Text('1 Pessoa.', style: TextStyle(color: Colors.grey[700]),),
                  ]
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('A partir de 4.321,00.', style: TextStyle(color: Colors.grey[700]),),
                    Text('R\$ 8.642,00.', style: TextStyle(fontSize: 24, color: Color(0xFFFD6C00), fontWeight: FontWeight.w700),),
                  ],
                ),
                Text('Cancelamento Grátis.', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),)
              ],
            ),
          ),
        ],
      ),
    );
  }

  buildAppBar() {
    return AppBar(
      centerTitle: false,
      backgroundColor: Color(0xFF010397B),
      title: Text(
        'Pesquisar',
        style: TextStyle(
          fontSize: 24,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
