import 'package:flutter/material.dart';
import '../constants/portfolio_constants.dart';

class StatsSection extends StatefulWidget {
  const StatsSection({super.key});

  @override
  State<StatsSection> createState() => _StatsSectionState();
}

class _StatsSectionState extends State<StatsSection> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDesktop = size.width > 900;
    final isMobile = size.width < 600;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? size.width * 0.1 : 16,
        vertical: 40,
      ),
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Wrap(
            spacing: isMobile ? 12 : 24,
            runSpacing: isMobile ? 12 : 24,
            alignment: WrapAlignment.center,
            children: PortfolioConstants.stats.map((stat) {
              // حساب العرض الديناميكي لشاشات الجوال والشاشات الكبيرة
              final cardWidth = isDesktop
                  ? (size.width * 0.8 - 72) / 4
                  : (size.width - 32 - (isMobile ? 12 : 24)) / 2;

              return Container(
                width: cardWidth,
                constraints: BoxConstraints(minHeight: isMobile ? 100 : 120),
                padding: EdgeInsets.all(isMobile ? 14 : 20),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface.withValues(alpha: 0.4),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.white.withValues(alpha: 0.05),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // تم إضافة FittedBox لتصغير حجم النص تلقائياً ومنع انقسام الكلمات
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: ShaderMask(
                        shaderCallback: (bounds) => const LinearGradient(
                          colors: [Color(0xff8a2be2), Color(0xff00f5d4)],
                        ).createShader(bounds),
                        child: Opacity(
                          opacity: _animation.value,
                          child: Text(
                            stat['number']!,
                            style: TextStyle(
                              fontSize: isMobile ? 24 : 32, // حجم مرن للخط
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      stat['label']!,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: isMobile ? 12 : 14,
                        color: Colors.white.withValues(alpha: 0.6),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}