import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';

class HeightSelector extends StatefulWidget {
  final double height;
  final Function(double value) onChangedHeight;

  const HeightSelector({
    super.key,
    required this.height,
    required this.onChangedHeight,
  });

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 5),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundComponent,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Text("ALTURA", style: TextStyles.bodyText),
            ),
            Text(
              "${widget.height.toStringAsFixed(0)} cm",
              style: TextStyles.numberText,
            ),
            Slider(
              value: widget.height,
              onChanged: (newHeight) {
                widget.onChangedHeight(newHeight);
              },
              min: 150,
              max: 220,
              divisions: 70,
              label: "${widget.height.toInt()} cm",
              activeColor: AppColors.primary,
            ),
          ],
        ),
      ),
    );
  }
}
