import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_images.dart';
import 'widgets/category_card.dart';
import 'widgets/promo_card.dart';
import 'widgets/partner_list.dart';
import 'widgets/tips_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = GoogleFonts.poppinsTextTheme();

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primary,
        title: Row(
          children: [
            Image.asset(AppImages.logoTukang, height: 28),
            const SizedBox(width: 4),
            Text(
              "tukang.com",
              style: textTheme.titleMedium!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none, color: Colors.white),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Greeting section
            Text(
              "Hi, Abidin 👋",
              style: textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              "Pilih layanan yang sesuai dengan kebutuhan",
              style: textTheme.bodyMedium!.copyWith(color: Colors.grey[600]),
            ),

            const SizedBox(height: 20),

            // Category cards
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CategoryCard(
                  title: "Home Maintenance",
                  icon: Icons.handyman,
                  color: Color(0xFFFFE082),
                ),
                CategoryCard(
                  title: "Build & Renovate",
                  icon: Icons.construction,
                  color: Color(0xFFFFD54F),
                ),
                CategoryCard(
                  title: "Design Inspiration",
                  icon: Icons.brush,
                  color: Color(0xFFFFC107),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Promo banner
            const PromoCard(
              imageUrl:
                  "https://images.unsplash.com/photo-1600585154340-be6161a56a0c?auto=format&fit=crop&w=800&q=60",
              title: "Ganti kloset baru.",
              subtitle: "Mulai dari Rp750.000",
            ),

            const SizedBox(height: 24),

            // Partner sections
            const PartnerList(
              title: "Official Partner Store",
              logos: [
                "https://seeklogo.com/images/T/toto-logo-8F0C79E50A-seeklogo.com.png",
                "https://upload.wikimedia.org/wikipedia/commons/f/fd/Dulux_Logo.svg",
                "https://upload.wikimedia.org/wikipedia/commons/7/7e/Nippon_Paint_logo.svg",
              ],
            ),

            const PartnerList(
              title: "Financial Partner",
              logos: [
                "https://upload.wikimedia.org/wikipedia/commons/5/5f/Kredivo_logo.svg",
                "https://upload.wikimedia.org/wikipedia/commons/d/d5/ShopeePay_Logo.svg",
                "https://upload.wikimedia.org/wikipedia/commons/5/55/OVO_Logo.svg",
              ],
            ),

            const SizedBox(height: 24),

            // Tips section
            TipsList(
              title: "Tips",
              articles: [
                {
                  "title": "Kenali tanda-tanda kerusakan rumah",
                  "image":
                      "https://images.unsplash.com/photo-1560184897-7a75f35b84cc?auto=format&fit=crop&w=800&q=60",
                },
                {
                  "title": "10 Macam desain kamar minimalis",
                  "image":
                      "https://images.unsplash.com/photo-1600585153837-9c4b50fa53e0?auto=format&fit=crop&w=800&q=60",
                },
                {
                  "title": "Tips hemat bahan bangunan",
                  "image":
                      "https://images.unsplash.com/photo-1616628188460-5b7b6b2f6e29?auto=format&fit=crop&w=800&q=60",
                },
              ],
            ),

            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
