import 'package:flutter/material.dart';

import 'cake.dart';

final List<Cake> cakes = [
  Cake(
      image:
          'https://storcpdkenticomedia.blob.core.windows.net/media/recipemanagementsystem/media/recipe-media-files/recipes/retail/x17/16714-birthday-cake-600x600.jpg?ext=.jpg',
      title: 'Banh sinh nhat 7 mau dep',
      price: 100000,
      rate: 4.2),
  Cake(
      image:
          'https://thumbs.dreamstime.com/z/happy-birthday-cake-tart-letters-as-candles-very-colorful-looking-very-tasty-isolated-white-53938227.jpg',
      title: 'Banh tinh yeu valentine',
      price: 200000,
      rate: 5.0),
  Cake(
      image:
          'https://i0.wp.com/www.onceuponachef.com/images/2012/11/Vanilla-Birthday-Cake-18.jpg?resize=760%2C937&ssl=1',
      title: 'Banh cuoi 102',
      price: 200000,
      rate: 3.0),
  Cake(
      image:
          'https://storcpdkenticomedia.blob.core.windows.net/media/recipemanagementsystem/media/recipe-media-files/recipes/retail/x17/16714-birthday-cake-600x600.jpg?ext=.jpg',
      title: 'Banh sinh nhat 7 mau dep',
      price: 200000,
      rate: 4.2),
  Cake(
      image:
          'https://i0.wp.com/www.onceuponachef.com/images/2012/11/Vanilla-Birthday-Cake-18.jpg?resize=760%2C937&ssl=1',
      title: 'Banh sinh nhat 7 mau dep',
      price: 200000,
      rate: 4.2),
  Cake(
      image:
          'https://storcpdkenticomedia.blob.core.windows.net/media/recipemanagementsystem/media/recipe-media-files/recipes/retail/x17/16714-birthday-cake-600x600.jpg?ext=.jpg',
      title: 'Banh sinh nhat 7 mau dep',
      price: 200000,
      rate: 4.2),
  Cake(
      image:
          'https://storcpdkenticomedia.blob.core.windows.net/media/recipemanagementsystem/media/recipe-media-files/recipes/retail/x17/16714-birthday-cake-600x600.jpg?ext=.jpg',
      title: 'Banh sinh nhat 7 mau dep',
      price: 200000,
      rate: 4.2),
  Cake(
      image:
          'https://i0.wp.com/www.onceuponachef.com/images/2012/11/Vanilla-Birthday-Cake-18.jpg?resize=760%2C937&ssl=1',
      title: 'Banh sinh nhat 7 mau dep',
      price: 200000,
      rate: 4.2),
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('List Cake'),
        ),
        body: ListView.builder(
          itemBuilder: (_, index) {
            final item = cakes[index];
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFFF2F2F2).withOpacity(0.8),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      item.image ?? '',
                      width: 56,
                      height: 56,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          item.title ?? '',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${item.price}d',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF898989),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  '${item.rate}',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF898989),
                                  ),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Color(0xFFF2994A),
                                ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text('Mua'),
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xFFBE1558),
                                ),
                              ),
                            ),
                            SizedBox(width: 24),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: Color(0xFFBE1558),
                                    ),
                                  ),
                                ),
                                child: Text(
                                  'Chia se',
                                  style: TextStyle(
                                    color: Color(0xFFBE1558),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
          itemCount: cakes.length,
        ),
      ),
    );
  }
}
