import 'package:flutter/material.dart';

// Model class for product details
class Product {
  final String name;
  final String imageUrl;
  final double price;

  Product({
    required this.name,
    required this.imageUrl,
    required this.price,
  });
}

class LatestArrivalsScreen extends StatelessWidget {
  LatestArrivalsScreen({Key? key}) : super(key: key);

  // Dummy product data
  final List<Product> products = [
    Product(
      name: 'Mobile Phone',
      imageUrl:
          'https://images.pexels.com/photos/1229456/pexels-photo-1229456.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      price: 99.99,
    ),
    Product(
      name: 'Laptop',
      imageUrl:
          'https://images.unsplash.com/photo-1602080858428-57174f9431cf?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fGxhcHRvcHN8ZW58MHx8MHx8fDA%3D',
      price: 149.99,
    ),
    Product(
      name: 'Watch Collection',
      imageUrl:
          'data:image/jpeg;base64,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',
      price: 79.99,
    ),
    Product(
      name: 'Shoes',
      imageUrl:
          'data:image/jpeg;base64,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',
      price: 199.99,
    ),
    Product(
      name: 'Bag',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3uCVbs_y4eWUPnOs1yV8rWBxdUd2JG3B86hdNXJKLaPt_kP6SnpLkNu5xkB-O-dJFXo8&usqp=CAU',
      price: 129.99,
    ),
    Product(
      name: 'Home Appliances',
      imageUrl:
          'https://femina.wwmindia.com/content/2020/aug/home54974166xl1597319530.jpg',
      price: 89.99,
    ),
    // Add more products as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latest Arrivals'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Image.network(
                product.imageUrl,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
              title: Text(product.name),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '\$${product.price.toStringAsFixed(2)}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Discount: ${((product.price * 0.15)).toStringAsFixed(2)}',
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Add to cart functionality
                      // You can implement this
                    },
                    child: Text('Add to Cart'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Buy now functionality
                      // You can implement this
                    },
                    child: Text('Buy Now'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: LatestArrivalsScreen(),
    debugShowCheckedModeBanner: false,
  ));
}