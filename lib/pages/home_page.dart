import 'package:flutter/material.dart';
import '../widgets/hero_section.dart';
import '../widgets/stats_section.dart';
import '../widgets/services_section.dart';
import '../widgets/projects_section.dart';
import '../widgets/skills_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            HeroSection(),
            StatsSection(),
            ServicesSection(),
            ProjectsSection(),
            SkillsSection(),
          ],
        ),
      ),
    );
  }
}