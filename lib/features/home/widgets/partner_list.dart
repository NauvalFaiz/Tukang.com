import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PartnerList extends StatelessWidget {
  final String title;
  final List<String> logos;

  const PartnerList({super.key, required this.title, required this.logos});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: logos
              .map((logo) => Container(
                    height: 50,
                    width: 80,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          color: Colors.black.withOpacity(0.05),
                        )
                      ],
                    ),
                    child: Image.network(logo, fit: BoxFit.contain),
                  ))
              .toList(),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
