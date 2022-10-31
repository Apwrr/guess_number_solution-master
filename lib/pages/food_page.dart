import 'package:flutter/material.dart';
import 'package:guess_number_solution/models/food.dart';

class FoodPage extends StatelessWidget {
  final Food food;

  const FoodPage({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(food.name)),
      body: Column(
        children: [
          Stack(
            children: [
              // วิดเจ็ต AspectRatio ใช้กำหนดอัตราส่วนความกว้าง:ความสูงของวิดเจ็ตที่เป็น child
              AspectRatio(
                // อัตราส่วนความกว้าง:ความสูง = 2.0 (ความกว้างเป็น 2 เท่าของความสูง)
                aspectRatio: 2.0,
                child: Image.asset(
                  'assets/images/${food.imageUrl}',
                  fit: BoxFit.cover,
                ),
              ),
              // วิดเจ็ต Positioned ใช้กำหนดตำแหน่งของวิดเจ็ตที่อยู่ภายใน Stack
              Positioned(
                // ผลของ bottom: 0.0 จะทำให้ child อยู่ชิดด้านล่าง (ห่างจากด้านล่างของ
                // stack เป็นระยะ 0.0)
                bottom: 0.0,
                // ผลของ left: 0.0 และ right: 0.0 จะทำให้ child อยู่ชิดซ้าย
                // (ห่างจากทางซ้ายของ stack เป็นระยะ 0.0) และอยู่ชิดขวา (ห่างจากทางขวาของ
                // stack เป็นระยะ 0.0) หรือก็คือทำให้ child ยืดเต็มความกว้างของ stack นั่นเอง
                left: 0.0,
                right: 0.0,
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  color: Colors.black.withOpacity(0.4),
                  child: Text(
                    '${food.price} บาท',
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
