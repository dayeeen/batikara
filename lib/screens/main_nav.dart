import 'package:flutter/material.dart';
import '../config/theme.dart';
import 'home/home_screen.dart';

// placeholder tab lain
class SavedScreen extends StatelessWidget { const SavedScreen({super.key}); @override Widget build(_) => const Center(child: Text('Saved')); }
class CartScreen  extends StatelessWidget { const CartScreen({super.key});  @override Widget build(_) => const Center(child: Text('Cart')); }
class ProfileScreen extends StatelessWidget { const ProfileScreen({super.key}); @override Widget build(_) => const Center(child: Text('Profile')); }

class MainNav extends StatefulWidget {
  const MainNav({super.key});
  @override State<MainNav> createState() => _MainNavState();
}

class _MainNavState extends State<MainNav> {
  int _index = 0;

  final _pages = [
    // pakai HomeScreen kamu yang sudah ada
    HomeScreen(),
    SavedScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  void _setIndex(int i) => setState(() => _index = i);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.of(context).push(...);
        },
        backgroundColor: AppColors.gold,
        foregroundColor: AppColors.black,
        elevation: 0,
        child: const Icon(Icons.auto_awesome), // sparkle
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // body tab
      body: SafeArea(
        child: IndexedStack(index: _index, children: _pages),
      ),

      // bottom bar custom
      bottomNavigationBar: BottomAppBar(
        color: AppColors.darkGrey,
        shape: const CircularNotchedRectangle(), // notch untuk FAB
        notchMargin: 8,
        height: 64,
        child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _NavItem(
                icon: Icons.home_rounded,
                label: 'Home',
                selected: _index == 0,
                onTap: () => _setIndex(0),
              ),
              _NavItem(
                icon: Icons.bookmark_rounded,
                label: 'Saved',
                selected: _index == 1,
                onTap: () => _setIndex(1),
              ),

              const SizedBox(width: 56), // space untuk FAB di tengah

              _NavItem(
                icon: Icons.shopping_cart_rounded,
                label: 'Cart',
                selected: _index == 2,
                onTap: () => _setIndex(2),
              ),
              _NavItem(
                icon: Icons.person_rounded,
                label: 'Profile',
                selected: _index == 3,
                onTap: () => _setIndex(3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  const _NavItem({
    required this.icon,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final color = selected ? AppColors.gold : Colors.white.withValues(alpha: 85);
    return InkResponse(
      onTap: onTap,
      radius: 28,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: color),
            const SizedBox(height: 2),
            Text(
              label,
              style: TextStyle(
                fontSize: 11,
                color: selected ? AppColors.gold : Colors.white70,
                fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
