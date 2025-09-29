import 'package:batikara/config/theme.dart';
import 'package:batikara/models/product.dart';
import 'package:batikara/widgets/btk_category_list.dart';
import 'package:batikara/widgets/btk_product_grid.dart';
import 'package:batikara/widgets/btk_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final categories = const [
    BtkCategory('Fabric', 'assets/images/cat_fabric.png'),
    BtkCategory('Shirt', 'assets/images/cat_shirt.png'),
    BtkCategory('Suit', 'assets/images/cat_suit.png'),
    BtkCategory('Shoes', 'assets/images/cat_shoes.png'),
    BtkCategory('Accesories', 'assets/images/cat_accesories.png'),
  ];

  final demoProducts = <Product>[
    Product(
      id: 'p1',
      title: 'Mega Mendung Heritage Shirt',
      imageAsset: 'assets/images/p1.png',
      price: 15,
      colors: [
        Color(0xFF79BEE3),
        Color(0xFFE1EAF1),
        Color(0xFF1F3B59),
        Color(0xFFDA2B2B),
      ],
      sizeLabel: 'S - XL',
    ),
    Product(
      id: 'p2',
      title: 'Mega Mendung Sneakers',
      imageAsset: 'assets/images/p2.png',
      price: 30,
      colors: [Color(0xFF162D3F), Color(0xFF6AA8C6), Color(0xFFDA2B2B)],
      sizeLabel: '36 – 44',
    ),
    Product(
      id: 'p3',
      title: 'Batik Mandala Blazer',
      imageAsset: 'assets/images/p3.png',
      price: 30,
      colors: [Color(0xFF6B4324), Color(0xFFC9A062)],
      sizeLabel: 'S - XL',
    ),
    Product(
      id: 'p4',
      title: 'Pekalongan Blossom Batik Kaftan Dress',
      imageAsset: 'assets/images/p4.png',
      price: 25,
      colors: [Color(0xFFD25549), Color(0xFFC4B35A), Color(0xFF77A55D)],
      sizeLabel: 'Free Size',
    ),
    // tambahkan lainnya...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Search
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 16, 6),
              child: BtkSearchBar(),
            ),

            // Greeting
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 6, 16, 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppText.greeting, style: AppTextStyle.regular),
                  Text(AppText.greetingSubtitle, style: AppTextStyle.label),
                ],
              ),
            ),

            const SizedBox(height: 12),

            // Category (horizontal)
            BtkCategoryList(items: categories),

            const SizedBox(height: 12),

            // Section title
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 6, 16, 6),
              child: Text(AppText.recommend, style: AppTextStyle.title),
            ),
            const SizedBox(height: 12),

            // Grid of products
            BtkProductGrid(items: demoProducts),

            const SizedBox(height: 24),

          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (i) {
          switch (i) {
            case 0: context.go('/home'); break;
            case 1: context.go('/saved'); break;
            case 2: context.go('/cart'); break;
            case 3: context.go('/profile'); break;
          }
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_rounded),    label: 'Home'),
          NavigationDestination(icon: Icon(Icons.chat_bubble_rounded),label: 'Chat'),
          NavigationDestination(icon: Icon(Icons.shopping_cart),   label: 'Cart'),
          NavigationDestination(icon: Icon(Icons.person_rounded),  label: 'Profile'),
        ],
      ),
    );
  }
}
