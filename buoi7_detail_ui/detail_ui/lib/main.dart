import 'package:flutter/material.dart';
import 'package:image_network/image_network.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              ImageWidget(),
              TitleWidget(),
              Container(height: 1, color: Color(0xFFF5F5F5)),
              ActionWidget(),
              Container(height: 1, color: Color(0xFFF5F5F5)),
              DescriptionWidget(),
              BuyingWidget(),
              SizedBox(height: 32)
            ],
          ),
        ),
      ),
    );
  }
}

class BuyingWidget extends StatelessWidget {
  const BuyingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '200.000d',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Mua'),
            style: ElevatedButton.styleFrom(
              primary: Color(0xFFBE1558),
              minimumSize: Size(120, 30),
            ),
          ),
        ],
      ),
    );
  }
}

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Mo ta',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 12),
          Text(
              'Bánh sinh nhật 7 màu là bánh rất đặc trưng trong các dịp sinh nhật ở Việt Nam.'),
          SizedBox(height: 24),
          Text(
            'Nguyên liệu',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 12),
          Text('Nguyen lieu rat la phong phu bao gom: duong, sua, hoa qua...'),
        ],
      ),
    );
  }
}

class ActionWidget extends StatelessWidget {
  const ActionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 9),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xFFF2F2F2),
      ),
      padding: EdgeInsets.symmetric(vertical: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Image.asset(
                'assets/images/ic_call.png',
                width: 32,
                height: 32,
              ),
              Text(
                "Call",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          Column(
            children: [
              Image.asset(
                'assets/images/ic_navigate.png',
                width: 32,
                height: 32,
              ),
              Text(
                "Navigate",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          Column(
            children: [
              Image.asset(
                'assets/images/ic_share.png',
                width: 32,
                height: 32,
              ),
              Text(
                "Share",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Bánh sinh nhật 7 màu rực rỡ',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: ImageNetwork(
                      image:
                          'https://khoinguonsangtao.vn/wp-content/uploads/2022/05/anh-avatar-dep-ngau-hinh-dai-dien.jpg',
                      height: 32,
                      width: 32,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Nguyen Van Trung',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFF898989)),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    '4.2',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Image.asset(
                    'assets/images/ic_star.png',
                    height: 24,
                    width: 24,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageNetwork(
      image:
          'https://st.quantrimang.com/photos/image/2019/06/26/banh-sinh-nhat-2.jpg',
      height: 355,
      width: 414,
      fitWeb: BoxFitWeb.cover,
    );
  }
}
