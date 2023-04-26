import 'package:flutter/material.dart';
import '../launch_intents.dart';

class PortoVelho extends StatelessWidget {

  final Uri url = Uri(
    scheme: 'https',
    host: 'www.google.com',
    path: '/maps/search/Praça+das+Caixas+D\'Água,+Porto+Velho+-+RO',
  );

  PortoVelho({Key? key}) : super(key: key);

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
                  'Porto Velho',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Três caixas D\'água',
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
        title: const Text('Porto Velho - RO'),
      ),
      body: ListView(
        children: [
          Image.asset(
            'imagens/ponto1.jpg',
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
                  makePhoneCall('+5569992086561');
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
            'Três caixas D\'água, também conhecidas como Três Marias, são um conjunto de três torres de água situadas no centro da cidade de Porto Velho, Rondônia. As torres se tornaram um ícone da cidade e são um dos principais pontos turísticos da região.',
            softWrap: true,
          ),
          const SizedBox(height: 20),
          const Text(
            'Melhores Restaurantes de Porto Velho',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 10),
          _buildRestaurantItem(
            'imagens/restaurante1.jpg',
            'Bacarat Restaurante',
            '(69) 3301-7774',
          ),
          _buildRestaurantItem(
            'imagens/restaurante2.jpg',
            'Casa do Tambaqui',
            '(69) 3224-1022',
          ),
          _buildRestaurantItem(
            'imagens/restaurante3.jpg',
            'Recanto do Tambaqui',
            '(69) 99964-9946',
          ),
          _buildRestaurantItem(
            'imagens/restaurante4.jpg',
            'O Paroca Restaurante',
            '(69) 3221-6616',
          ),

        ],
      ),
    );
  }

}
