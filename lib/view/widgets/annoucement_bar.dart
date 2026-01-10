import 'package:flutter/material.dart';

class AnnouncementBar extends StatefulWidget {
  final String text;

  const AnnouncementBar({
    super.key,
    required this.text,
  });

  @override
  State<AnnouncementBar> createState() => _AnnouncementBarState();
}

class _AnnouncementBarState extends State<AnnouncementBar>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 12),
    )..repeat();

    _animation = Tween<double>(
      begin: 1.0,
      end: -1.0,
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.linear),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      height: 36,
      color: colorScheme.primary,
      alignment: Alignment.centerLeft,
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return FractionalTranslation(
            translation: Offset(_animation.value, 0),
            child: child,
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            widget.text,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: colorScheme.background,
              fontWeight: FontWeight.w500,
            ),
            maxLines: 1,
            overflow: TextOverflow.visible,
          ),
        ),
      ),
    );
  }
}
