import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  final String name;
  final String url;
  final double price;

  const ProductView({
    super.key,
    required this.name,
    required this.url,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 230,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 150,
            height: 150,
            child: Image(
                image: NetworkImage(
                    'http://www.ctsi.com.mx/liverpool/' + this.url)),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            this.name,
            style: TextStyle(fontSize: 12),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '\$' + this.price.toStringAsFixed(2),
            style: TextStyle(
                fontSize: 15,
                color: Colors.redAccent,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
