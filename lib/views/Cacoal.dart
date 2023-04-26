import 'package:flutter/material.dart';
import '../launch_intents.dart';

class Cacoal extends StatelessWidget {

  final Uri url = Uri(
    scheme: 'https',
    host: 'www.google.com',
    path: '/maps/search/cacoal+selva+park,+cacoal+-+RO',
  );

  Cacoal({Key? key}) : super(key: key);

  Widget _buildTitleSection() {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Cacoal - RO',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Cacoal Selva Park',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );
  }

  Widget _buildRestaurantItem(
      String imageAsset, String restaurantName, String phoneNumber) {
    return Card(
      child: ListTile(
        leading: Image.asset(
          imageAsset,
          width: 80,
          height: 80,
          fit: BoxFit.cover,
        ),
        title: Text(restaurantName),
        trailing: ElevatedButton(
          onPressed: () {
            makePhoneCall(phoneNumber);
          },
          child: const Text('Ligar'),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cacoal-RO'),
      ),
      body: ListView(
        children: [
          Image.asset(
            'imagens/ponto3.jpg',
            width: 800,
            height: 440,
            fit: BoxFit.cover,
          ),
          _buildTitleSection(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  makePhoneCall('(69) 3441-1039');
                },
                child: const Text('Ligar'),
              ),

              ElevatedButton(
                  onPressed: () {
                    launchInBrowser(url);
                  },
                  child: Text('Visite- nos')),
            ],
          ),
          _buildTextSection(),
        ],
      ),
    );
  }

  Widget _buildTextSection() {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Cacoal Selva Park. O lugar é, na verdade, um complexo enorme de entretenimento e lazer,'
                ' oferece diversas atividades para quem vai passar por Cacoal alguns dias e para sua população local.'
                'O principal atrativo é o parque aquático, que tem aqueles brinquedos que todo mundo adora:'
                ' tobogãs, escorregadores, boias, ondas, etc. Outra coisa é que também permite as trilhas internas, '
                'que são monitoradas, além de salão de jogos, sorveterias e outros serviços.',
            softWrap: true,
          ),
          const SizedBox(height: 20),
          const Text(
            'Melhores Restaurantes de Cacoal',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 10),
          _buildRestaurantItem(
            'imagens/restaurante9.jpg',
            'Toldus Pizzaria e Restaurante Cacoal',
            '(69) 3441-5355',
          ),
          _buildRestaurantItem(
            'imagens/restaurante10.jpg',
            'El Sossego Restaurante',
            '(69) 3441-5394',
          ),
          _buildRestaurantItem(
            'imagens/restaurante11.jpg',
            'Varanda Sabor',
            '3441-9230',
          ),
          _buildRestaurantItem(
            'imagens/restaurante12.jpg',
            'Tcheks Grill',
            '(69) 3441-6513',
          ),

        ],
      ),
    );
  }

}
