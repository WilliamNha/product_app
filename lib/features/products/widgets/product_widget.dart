import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:product_app/config/theme/colors_common.dart';
import 'package:product_app/config/theme/theme_color.dart';
import 'package:product_app/config/theme/theme_text.dart';
import 'package:product_app/features/products/models/product_model.dart';

class ProductWidget extends StatelessWidget {
  final Product? product;
  const ProductWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: context.themeColor.chipBgColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
              child: CachedNetworkImage(
                placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                imageUrl: product?.thumbnail ?? '',
                fit: BoxFit.cover,
                height: 120,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product?.title ?? '',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: context.themeText.text13Bold,
                ),
                if (product?.brand != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      product?.brand ?? '',
                      style: context.themeText.text12Medium.copyWith(color: Colors.grey[600]),
                    ),
                  ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      "\$${product?.price?.toStringAsFixed(2)}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green[700],
                      ),
                    ),
                    const SizedBox(width: 6),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: ColorsCommon.red.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        "-${product?.discountPercentage?.toStringAsFixed(0)}%",
                        style: const TextStyle(color: ColorsCommon.red, fontSize: 12),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.star, size: 16, color: ColorsCommon.yellow),
                    const SizedBox(width: 4),
                    Text(
                      product?.rating?.toStringAsFixed(1) ?? '',
                      style: context.themeText.text12SemiBold,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
