
import 'package:flutter/material.dart';
import '../constants/portfolio_constants.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

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
              'Technical Expertise',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'Proficiency levels in software engineering tools, architectures, and languages',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white.withValues(alpha: 0.6),
            ),
          ),
          const SizedBox(height: 56),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: PortfolioConstants.coreSkills.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: isDesktop ? 2 : 1,
              crossAxisSpacing: 32,
              mainAxisSpacing: 32,
              mainAxisExtent: 100,
            ),
            itemBuilder: (context, index) {
              final skill = PortfolioConstants.coreSkills[index];
              return SkillBarTile(
                name: skill['name'] as String,
                level: skill['level'] as int,
              );
            },
          ),
        ],
      ),
    );
  }
}

class SkillBarTile extends StatefulWidget {
  final String name;
  final int level;

  const SkillBarTile({
    super.key,
    required this.name,
    required this.level,
  });

  @override
  State<SkillBarTile> createState() => _SkillBarTileState();
}

class _SkillBarTileState extends State<SkillBarTile> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface.withValues(alpha: _isHovered ? 0.8 : 0.4),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: _isHovered
                ? Theme.of(context).colorScheme.primary.withValues(alpha: 0.2)
                : Colors.white.withValues(alpha: 0.02),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.name,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '${widget.level}%',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Stack(
              children: [
                Container(
                  height: 6,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.05),
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
                LayoutBuilder(
                  builder: (context, constraints) {
                    final targetWidth = constraints.maxWidth * (widget.level / 100);
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 800),
                      curve: Curves.easeOutCubic,
                      height: 6,
                      width: _isHovered ? targetWidth : 0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        gradient: const LinearGradient(
                          colors: [Color(0xff8a2be2), Color(0xff00f5d4)],
                        ),
                        boxShadow: [
                          if (_isHovered)
                            BoxShadow(
                              color: const Color(0xff00f5d4).withValues(alpha: 0.3),
                              blurRadius: 8,
                              offset: const Offset(0, 2),
                            ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}