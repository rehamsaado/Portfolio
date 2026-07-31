
import 'package:flutter/material.dart';
import '../constants/portfolio_constants.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDesktop = size.width > 900;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? size.width * 0.1 : 24,
        vertical: 80,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ShaderMask(
            shaderCallback: (bounds) => const LinearGradient(
              colors: [Color(0xff8a2be2), Color(0xff00f5d4)],
            ).createShader(bounds),
            child: const Text(
              'What I Offer',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'Specialized services to turn your ideas into high-performance realities',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white.withValues(alpha: 0.6),
            ),
          ),
          const SizedBox(height: 56),
          Wrap(
            spacing: 24,
            runSpacing: 24,
            alignment: WrapAlignment.center,
            children: PortfolioConstants.services.map((service) {
              return ServiceCard(
                title: service['title']!,
                description: service['description']!,
                iconName: service['icon']!,
                isDesktop: isDesktop,
                screenWidth: size.width,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class ServiceCard extends StatefulWidget {
  final String title;
  final String description;
  final String iconName;
  final bool isDesktop;
  final double screenWidth;

  const ServiceCard({
    super.key,
    required this.title,
    required this.description,
    required this.iconName,
    required this.isDesktop,
    required this.screenWidth,
  });

  @override
  State<ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool _isHovered = false;

  IconData _getIcon(String name) {
    switch (name) {
      case 'phone_android':
        return Icons.phone_android_rounded;
      case 'brush':
        return Icons.brush_rounded;
      case 'storage':
        return Icons.storage_rounded;
      default:
        return Icons.code_rounded;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        transform: _isHovered
            ? (Matrix4.identity()..setTranslationRaw(0, -10, 0))
            : Matrix4.identity(),
        width: widget.isDesktop
            ? (widget.screenWidth * 0.8 - 48) / 3
            : double.infinity,
        padding: const EdgeInsets.all(32),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: _isHovered
                ? Theme.of(context).colorScheme.primary
                : Colors.white.withValues(alpha: 0.05),
            width: 1.5,
          ),
          boxShadow: [
            if (_isHovered)
              BoxShadow(
                color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.15),
                blurRadius: 30,
                offset: const Offset(0, 15),
              ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: _isHovered
                    ? Theme.of(context).colorScheme.primary.withValues(alpha: 0.15)
                    : Colors.white.withValues(alpha: 0.02),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(
                _getIcon(widget.iconName),
                color: _isHovered
                    ? Theme.of(context).colorScheme.secondary
                    : Theme.of(context).colorScheme.primary,
                size: 32,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              widget.description,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white.withValues(alpha: 0.6),
                height: 1.6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}