class PortfolioConstants {
  // 1. Personal & Professional Info
  static const String fullName = 'Reham Alshiekh Saado';
  static const String title = 'Flutter Software Engineer';
  static const String subTitle = 'Flutter Software Engineer';
  static const String bio = 'Informatics Engineering Graduate specialized in building scalable, high-performance cross-platform mobile applications. Expert in Clean Architecture, BLoC/Cubit, Supabase (RLS & Realtime Streams), and integrating AI workflows (n8n & Gemini AI) backed by robust CI/CD pipelines.';
  static const String location = 'Aleppo, Syria';
  static const String email = 'rehamsaado37@gmail.com';

  // 2. Social Media & Freelance Links
  static const String githubUrl = 'https://github.com/rehamsaado';
  static const String linkedinUrl = 'https://www.linkedin.com/in/reham-saado-990066306?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app';
  static const String resumePdfUrl = 'assets/files/reham_cv.pdf';

  // 3. Quick Statistics
  static const List<Map<String, String>> stats = [
    {'number': 'Graduate', 'label': 'Informatics Engineer'},
    {'number': '130+', 'label': 'Codeforces Solved'},
    {'number': 'AI/n8n', 'label': 'Workflows Integrated'},
    {'number': 'CI/CD', 'label': 'Automated Pipelines'},
  ];

  // 4. Tech Stack & Skills (Updated to reflect current proficiency)
  static const List<Map<String, dynamic>> coreSkills = [
    {'name': 'Dart & Flutter (Material 3 / Responsive UI)', 'level': 95},
    {'name': 'Clean Architecture, SOLID & Repository Pattern', 'level': 90},
    {'name': 'State Management (BLoC)', 'level': 95},
    {'name': 'Backend & Realtime (Supabase, PostgreSQL & RLS)', 'level': 90},
    {'name': 'Competitive Programming (130+ Python Challenges)', 'level': 60},
    {'name': 'Automation (n8n & Gemini AI)', 'level': 75},
  ];

  // 5. Freelance Professional Services
  static const List<Map<String, dynamic>> services = [
    {
      'title': 'Cross-Platform Mobile App Development',
      'description': 'Building production-ready, high-performance applications for Android and iOS using Clean Architecture and BLoC.',
      'icon': 'phone_android',
    },
    {
      'title': 'AI Workflow Integration & Automation (n8n & Gemini)',
      'description': 'Connecting Flutter apps with intelligent backends, n8n webhook automation.',
      'icon': 'smart_toy',
    },
    {
      'title': 'Backend Integration & Realtime Databases',
      'description': 'Integrating RESTful APIs, Supabase real-time streaming, Storage, and Row Level Security (RLS).',
      'icon': 'storage',
    },
  ];

  // 6. Projects Showcase
  static const List<Map<String, dynamic>> projects = [
    {
      'title': 'Rego - Smart Restaurant Management Ecosystem',
      'description': 'A dual Flutter application ecosystem (Admin Dashboard & Customer Table App). Powered by n8n workflows, Gemini AI for dynamic calorie calculations, and an active AI Voice Waiter querying Supabase via Speech-to-Text.',
      'architecture': 'Clean Architecture (Multi-app Ecosystem) adhering to strict SOLID principles and Repository Pattern.',
      'stateManagement': 'BLoC / Cubit for synchronizing ordering states, voice commands, and real-time backend updates.',
      'techUsed': ['Flutter', 'Supabase (RLS)', 'Gemini AI', 'n8n Automation', 'BLoC'],
      'githubLink': 'https://github.com/rehamsaado/rego_smart_restaurant',
      'image': 'assets/images/rego_preview.png',
    },
    {
      'title': 'Swift Chat (Real-time Social & Messaging Platform)',
      'description': 'A robust real-time social platform featuring low-latency direct messaging, dynamic social feed with user posts, comments, status stories, and Supabase Row Level Security.',
      'architecture': 'Clean Architecture (Data, Domain, Presentation) ensuring decoupled and highly testable codebases.',
      'stateManagement': 'BLoC for predictable state transitions and stream handlers.',
      'techUsed': ['Flutter', 'Supabase Streams', 'PostgreSQL', 'RLS', 'BLoC'],
      'githubLink': 'https://github.com/rehamsaado/swift_chat',
      'image': 'assets/images/swift_chat_preview.png',
    },
    {
      'title': 'Smart School System',
      'description': 'Comprehensive educational management ecosystem linking students, teachers, and school administration with real-time academic records.',
      'architecture': '3-layer Clean Architecture with custom network interceptors using Dio.',
      'stateManagement': 'Cubit for high-performance reactive UI rendering.',
      'techUsed': ['Flutter', 'REST APIs', 'Dio', 'Cubit', 'Clean Architecture'],
      'githubLink': 'https://github.com/rehamsaado/smart_school',
      'image': 'assets/images/smart_school_preview.png',
    },
  ];

  // 7. Education & Qualifications
  static const List<Map<String, String>> educationAndCertificates = [
    {
      'title': 'Bachelor of Informatics Engineering',
      'institution': 'University of Aleppo - Faculty of Informatics Engineering',
      'period': 'Graduated 2025',
      'details': 'Core Focus: Software Engineering, Data Structures, Problem Solving & Active Competitive Programming (130+ Python problems solved on Codeforces).',
    },
    {
      'title': 'CI/CD',
      'institution': 'GitHub Actions Optimization Workflow',
      'period': '2026',
      'details': 'Automated deployment pipelines and code quality assurance via GitHub Actions.',
    },
  ];
}