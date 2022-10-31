import 'package:flutter/material.dart';
import 'package:guess_number_solution/models/food.dart';
import 'package:guess_number_solution/pages/food_page.dart';

var foodList = [
  Food(
    name: 'ข้าวมันไก่',
    price: 40,
    imageUrl: 'tnfood6.jpg',
  ),
  Food(
    name: 'ข้าวหมูกรอบ',
    price: 45,
    imageUrl: 'tnfood6.jpg',
  ),
  Food(
    name: 'ผัดไทย',
    price: 50,
    imageUrl: 'tnfood6.jpg',
  ),
  Food(
    name: 'ผัดซีอิ๊ว',
    price: 35,
    imageUrl: 'tnfood6.jpg',
  ),
  Food(
    name: 'ข้าวขาหมู',
    price: 40,
    imageUrl: 'tnfood6.jpg',
  ),
  Food(
    name: 'ข้าวหน้าเป็ด',
    price: 60,
    imageUrl: 'tnfood6.jpg',
  ),
  Food(
    name: 'ส้มตำ',
    price: 40,
    imageUrl: 'tnfood6.jpg',
  ),
  Food(
    name: 'ข้าวผัด',
    price: 30,
    imageUrl: 'tnfood6.jpg',
  ),
  Food(
    name: 'ข้าวกะเพราไก่ไข่ดาว',
    price: 35,
    imageUrl: 'tnfood6.jpg',
  ),
];

class FoodListPage extends StatefulWidget {
  const FoodListPage({Key? key}) : super(key: key);

  @override
  _FoodListPageState createState() => _FoodListPageState();
}

class _FoodListPageState extends State<FoodListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Food List')),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int i) {
          var food = foodList[i];
          return Card(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FoodPage(food: food)),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    //Icon(Icons.fastfood, size: 50.0),
                    Image.asset(
                      'assets/images/${food.imageUrl}',
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            food.name,
                            style: const TextStyle(fontSize: 20.0),
                          ),
                          Text('${food.price} บาท'),
                        ],
                      ),
                    ),
                    Text('${food.orderCount}')
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: foodList.length,
      ),
    );
  }
}
