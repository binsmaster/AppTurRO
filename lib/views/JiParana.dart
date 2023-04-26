import 'package:flutter/material.dart';
import '../launch_intents.dart';

class JiParana extends StatelessWidget {
  final Uri mapsUrl = Uri(
    scheme: 'https',
    host: 'www.google.com',
    path: '/maps/search/Praça+das+Caixas+D\'Água,+Porto+Velho+-+RO',
  );

  final Uri url = Uri(
    scheme: 'https',
    host: 'www.google.com',
    path: '/maps/search/Rio+Ji-Parana+D\'Rio,+Jiparana+-+RO',
  );

  JiParana({Key? key}) : super(key: key);

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
                  'Ji-Parana',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Rio Ji-Parana',
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
        title: const Text('Ji-Parana - RO'),
      ),
      body: ListView(
        children: [
          Image.asset(
            'imagens/ponto2.jpg',
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
            'O rio Ji-Paraná é um curso de água que nasce no estado de Rondônia.'
                'É mais conhecido pela população local por rio Machado, nome que curiosamente é também usado para designar outro rio do estado de Minas Gerais.'
                'Pertencente à bacia Amazônica, o rio Ji-Paraná desagua no rio Madeira.',
            softWrap: true,
          ),
          const SizedBox(height: 20),
          const Text(
            'Melhores Restaurantes de Ji-Parana',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 10),
          _buildRestaurantItem(
            'imagens/restaurante5.jpg',
            'Mirante Restaurante - Gastronomia da Amazônia',
            '(69) 99282-2788',
          ),
          _buildRestaurantItem(
            'imagens/restaurante6.jpg',
            'Caleche Restaurante',
            '(69) 3423-7335',
          ),
          _buildRestaurantItem(
            'imagens/restaurante7.jpg',
            'El Mundo Cozinha Contemporânea',
            '(69) 3423-0899',
          ),
          _buildRestaurantItem(
            'imagens/restaurante8.jpg',
            'Restaurante Sabor de Casa',
            '(69) 3423-2163',
          ),

        ],
      ),
    );
  }

}
