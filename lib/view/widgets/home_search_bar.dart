import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeSearchBar extends StatelessWidget {
  final String hintText;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;

  const HomeSearchBar({
    super.key,
    this.hintText = 'Search abayas, collections...',
    this.onChanged,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          color: colorScheme.surface,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: colorScheme.onSurface.withOpacity(0.5),
          ),
        ),
        child: Row(
          children: [
            const SizedBox(width: 16),

            // Search Icon
            Icon(
              CupertinoIcons.search,
              color: colorScheme.onSurface.withOpacity(0.6),
              size: 22,
            ),

            const SizedBox(width: 8),

            // Text Field
            Expanded(
              child: TextField(
                onChanged: onChanged,
                onTap: onTap,
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurface.withOpacity(0.5),
                  ),
                  border: InputBorder.none,
                  isDense: true,
                ),
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSurface,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
