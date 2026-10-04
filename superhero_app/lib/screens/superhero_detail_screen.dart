import 'package:flutter/material.dart';
import 'package:superhero_app/data/model/superhero_detail_response.dart';

class SuperheroDetailScreen extends StatelessWidget {
  final SuperheroDetailResponse superHero;

  const SuperheroDetailScreen({super.key, required this.superHero});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail --> ${superHero.name}")),
      body: Column(
        children: [
          ClipRRect(
            child: Image.network(
              superHero.url,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
              alignment: Alignment(0, 0),
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.image_not_supported);
              },
            ),
          ),
          Text("Name: ${superHero.name}", style: TextStyle(fontSize: 24)),
          Text(
            superHero.realName,
            style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
          ),
          SizedBox(
            width: double.infinity,
            height: 130,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: double.parse(superHero.powerStats.power),
                      width: 20,
                      color: Colors.red,
                    ),
                    Text("Power"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: double.parse(superHero.powerStats.intelligence),
                      width: 20,
                      color: Colors.blue,
                    ),
                    Text("Intelligence"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: double.parse(superHero.powerStats.strength),
                      width: 20,
                      color: Colors.grey,
                    ),
                    Text("Strength"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: double.parse(superHero.powerStats.speed),
                      width: 20,
                      color: Colors.green,
                    ),
                    Text("Speed"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: double.parse(superHero.powerStats.durability),
                      width: 20,
                      color: Colors.orange,
                    ),
                    Text("Durability"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: double.parse(superHero.powerStats.combat),
                      width: 20,
                      color: Colors.black,
                    ),
                    Text("Combat"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
