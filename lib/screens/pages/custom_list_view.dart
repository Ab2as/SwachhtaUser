import 'package:flutter/material.dart';

class CardItem {
  final String urlImg;
  final String title;
  final String place;
  const CardItem({
    required this.urlImg,
    required this.title,
    required this.place,
  });
}

class CustomListView extends StatefulWidget {
  const CustomListView({super.key});

  @override
  State<CustomListView> createState() => CustomListViewState();
}

class CustomListViewState extends State<CustomListView> {
  List<CardItem> item = const [
    CardItem(
        urlImg: 'assets/images/complain1.jpeg',
        title: 'Pothole',
        place: 'Rae Bareli '),
    CardItem(
        urlImg: 'assets/images/complaint2.jpg',
        title: 'Fallen tree',
        place: 'Rae Bareli '),
    CardItem(
        urlImg: 'assets/images/complaint3.jpg',
        title: 'Fallen tree',
        place: 'Rae Bareli '),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        separatorBuilder: (context, _) => const SizedBox(
          width: 10,
        ),
        itemBuilder: (context, index) => buildCard(item[index]),
      ),
    );
  }

  Widget buildCard(CardItem item) => Container(
        width: 200,
        height: 200,
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 4 / 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(item.urlImg),
                ),
              ),
            ),
            Text(
              item.title,
              style: TextStyle(color: Colors.black),
            ),
            Text(item.place),
          ],
        ),
      );
}
