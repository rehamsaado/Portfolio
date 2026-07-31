
import 'package:flutter/material.dart';
import '../constants/portfolio_constants.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

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
              'Featured Projects',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'A showcase of engineered solutions, clean architecture, and robust state management',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white.withValues(alpha: 0.6),
            ),
          ),
          const SizedBox(height: 64),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: PortfolioConstants.projects.length,
            separatorBuilder: (context, index) => const SizedBox(height: 80),
            itemBuilder: (context, index) {
              final project = PortfolioConstants.projects[index];
              return ProjectRow(
                project: project,
                isEven: index % 2 == 0,
                isDesktop: isDesktop,
                screenWidth: size.width,
              );
            },
          ),
        ],
      ),
    );
  }
}

class ProjectRow extends StatefulWidget {
  final Map<String, dynamic> project;
  final bool isEven;
  final bool isDesktop;
  final double screenWidth;

  const ProjectRow({
    super.key,
    required this.project,
    required this.isEven,
    required this.isDesktop,
    required this.screenWidth,
  });

  @override
  State<ProjectRow> createState() => _ProjectRowState();
}

class _ProjectRowState extends State<ProjectRow> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    if (!widget.isDesktop) {
      return _buildMobileLayout();
    }

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeOut,
        transform: _isHovered
            ? (Matrix4.identity()..setTranslationRaw(0, -12, 0))
            : Matrix4.identity(),
        padding: const EdgeInsets.all(32),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface.withValues(alpha: 0.5),
          borderRadius: BorderRadius.circular(32),
          border: Border.all(
            color: _isHovered
                ? Theme.of(context).colorScheme.secondary.withValues(alpha: 0.3)
                : Colors.white.withValues(alpha: 0.03),
            width: 1.5,
          ),
        ),
        child: Row(
          children: widget.isEven
              ? [_buildProjectDetails(), const SizedBox(width: 48), _buildProjectImage()]
              : [_buildProjectImage(), const SizedBox(width: 48), _buildProjectDetails()],
        ),
      ),
    );
  }

  Widget _buildProjectDetails() {
    return Expanded(
      flex: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.project['title']!,
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 16),
          Text(
            widget.project['description']!,
            style: TextStyle(fontSize: 15, color: Colors.white.withValues(alpha: 0.7), height: 1.6),
          ),
          const SizedBox(height: 12),
          _buildFeatureRow(Icons.layers_rounded, widget.project['architecture']!),
          const SizedBox(height: 8),
          _buildFeatureRow(Icons.alt_route_rounded, widget.project['stateManagement']!),
          const SizedBox(height: 24),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: (widget.project['techUsed'] as List<String>).map((tech) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.2)),
                ),
                child: Text(
                  tech,
                  style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontSize: 13, fontWeight: FontWeight.w500),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildProjectImage() {
    return Expanded(
      flex: 4,
      child: AnimatedScale(
        scale: _isHovered ? 1.03 : 1.0,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeOut,
        child: Container(
          height: 280,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: Colors.white.withValues(alpha: 0.05)),
          ),
          alignment: Alignment.center,
          child: Icon(
            Icons.dashboard_customize_rounded,
            size: 64,
            color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.3),
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureRow(IconData icon, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 18, color: Theme.of(context).colorScheme.primary),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: TextStyle(fontSize: 13, color: Colors.white.withValues(alpha: 0.5), height: 1.4),
          ),
        ),
      ],
    );
  }

  Widget _buildMobileLayout() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white.withValues(alpha: 0.03)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(16),
            ),
            alignment: Alignment.center,
            child: Icon(Icons.dashboard_customize_rounded, size: 48, color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.3)),
          ),
          const SizedBox(height: 24),
          Text(widget.project['title']!, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white)),
          const SizedBox(height: 12),
          Text(widget.project['description']!, style: TextStyle(fontSize: 14, color: Colors.white.withValues(alpha: 0.7), height: 1.5)),
          const SizedBox(height: 16),
          _buildFeatureRow(Icons.layers_rounded, widget.project['architecture']!),
          const SizedBox(height: 8),
          _buildFeatureRow(Icons.alt_route_rounded, widget.project['stateManagement']!),
          const SizedBox(height: 20),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: (widget.project['techUsed'] as List<String>).map((tech) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(tech, style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontSize: 12)),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}