class PortfolioConstants {
  // 1. Personal & Professional Info
  static const String fullName = 'Reham Alshiekh Saado';
  static const String title = 'Flutter Software Engineer';
  static const String subTitle = 'Flutter Software Engineer';
  static const String bio =
      'Informatics Engineering Graduate specialized in building scalable, high-performance cross-platform mobile applications. Expert in Clean Architecture, BLoC/Cubit, Supabase (RLS & Realtime Streams), and automated AI workflows (n8n & Gemini AI) backed by robust CI/CD pipelines.';
  static const String location = 'Aleppo, Syria';
  static const String email = 'rehamsaado37@gmail.com';

  // 2. Social Media & Freelance Links
  static const String githubUrl = 'https://github.com/rehamsaado';
  static const String linkedinUrl = 'https://linkedin.com/in/rehamsaado';
  static const String resumePdfUrl =
      'https://raw.githubusercontent.com/rehamsaado/Portfolio/main/assets/files/rehamsaado_flutter.pdf';

  // 3. Quick Statistics / Highlights
  static const List<Map<String, String>> stats = [
    {'number': 'Graduate', 'label': 'Informatics Engineer'},
    {'number': 'Python', 'label': 'Problem Solving & CP'},
    {'number': 'AI Powered', 'label': 'Smart Workflows'},
    {'number': 'CI/CD', 'label': 'Automated Pipelines'},
  ];

  // 4. Tech Stack & Skills
  static const List<Map<String, dynamic>> coreSkills = [
    {'name': 'Dart & Flutter (Material 3 / Responsive UI)', 'level': 95},
    {'name': 'Clean Architecture, SOLID & Repository Pattern', 'level': 90},
    {'name': 'State Management (BLoC / Cubit)', 'level': 95},
    {'name': 'Backend & Realtime (Supabase, PostgreSQL & RLS)', 'level': 90},
    {'name': 'Networking & APIs (Dio, RESTful APIs, JSON)', 'level': 90},
    {'name': 'Problem Solving & Logic (Codeforces / Python)', 'level': 85},
  ];

  // 5. Freelance Professional Services
  static const List<Map<String, dynamic>> services = [
    {
      'title': 'Cross-Platform Mobile App Development',
      'description':
          'Building production-ready, high-performance applications for Android and iOS using Clean Architecture and BLoC.',
      'icon': 'phone_android',
    },
    {
      'title': 'Backend Integration & Realtime Databases',
      'description':
          'Integrating RESTful APIs via Dio, Supabase real-time streaming, Storage, and Row Level Security (RLS).',
      'icon': 'storage',
    },
    {
      'title': 'CI/CD Pipelines & Automated Workflows',
      'description':
          'Automating build, testing, and deployment processes using GitHub Actions to accelerate delivery and ensure high code quality.',
      'icon': 'rocket_launch',
    },
  ];

  // 6. Projects Showcase
  static const List<Map<String, dynamic>> projects = [
    {
      'title': 'Swift Chat (Real-time Social & Messaging Platform)',
      'description':
          'A robust real-time social platform featuring low-latency direct messaging, dynamic social feed with user posts, comments, status stories, and Supabase Row Level Security.',
      'architecture':
          'Clean Architecture (Data, Domain, Presentation) ensuring decoupled and highly testable codebases.',
      'stateManagement':
          'BLoC for predictable state transitions and stream handlers.',
      'techUsed': ['Flutter', 'Supabase Streams', 'PostgreSQL', 'RLS', 'BLoC'],
      'githubLink': 'https://github.com/rehamsaado/swift_chat',
      'demoLink':
          'https://www.linkedin.com/posts/reham-saado-990066306_flutter-supabase-cleanarchitecture-activity-7483565358302445568-Bk3Q?utm_source=share&utm_medium=member_android&rcm=ACoAAE32c_wBevW0FKZYGqtxk-7ko8JloCcIPfM',
      'image': 'assets/images/swift_chat_preview.png',
    },
    {
      'title': 'Rego - Smart Restaurant Management Ecosystem',
      'description':
          'A dual Flutter application ecosystem (Admin Dashboard & Customer Table App). Features automated n8n workflows integrated with Gemini AI for dynamic nutrition scoring and meal analysis.',
      'architecture':
          'Clean Architecture (Multi-app Ecosystem) adhering to strict SOLID principles and Repository Pattern.',
      'stateManagement':
          'BLoC / Cubit for synchronizing ordering states and real-time backend updates.',
      'techUsed': [
        'Flutter',
        'Supabase (RLS)',
        'n8n Automation',
        'Gemini AI',
        'BLoC',
      ],
      'githubLink':
          'https://github.com/rehamsaado/Restaurant-Management-Ecosystem',
      'image': 'assets/images/rego_preview.png',
    },
    {
      'title': 'E-Commerce Mobile Application (Shopping App)',
      'description':
          'A localized cross-platform e-commerce application integrated with FakeStoreAPI. Features authentication, search and catalog browsing, product details, local storage persistent shopping cart, and user profile management.',
      'architecture':
          'Clean Architecture with Repository Pattern, Dio Interceptors, and Local Storage Caching.',
      'stateManagement':
          'BLoC / Cubit for state management, reactive cart state, and network status.',
      'techUsed': [
        'Flutter',
        'REST API (FakeStoreAPI)',
        'BLoC/Cubit',
        'Dio',
        'Local Storage',
        'Clean Architecture',
      ],
      'githubLink': 'https://github.com/rehamsaado/shopping_app',
      'image': 'assets/images/shopping_app_preview.png',
    },

    {
      'title': 'Smart School System',
      'description':
          'Comprehensive educational management ecosystem linking students, teachers, and school administration with real-time academic records.',
      'architecture':
          '3-layer Clean Architecture with custom network interceptors using Dio.',
      'stateManagement': 'Cubit for high-performance reactive UI rendering.',
      'techUsed': [
        'Flutter',
        'REST APIs',
        'Dio',
        'Cubit',
        'Clean Architecture',
      ],
      'githubLink': 'https://github.com/Hazem-bcs/smart-school',
      'image': 'assets/images/smart_school_preview.png',
    },
  ];

  // 7. Education & Qualifications
  static const List<Map<String, String>> educationAndCertificates = [
    {
      'title': 'Bachelor of Informatics Engineering',
      'institution':
          'University of Aleppo - Faculty of Informatics Engineering',
      'period': 'Graduated',
      'details':
          'Core Focus: Software Engineering, Data Structures, Problem Solving & Competitive Programming in Python.',
    },
    {
      'title': 'CI/CD & DevOps Workflow',
      'institution': 'GitHub Actions Optimization Workflow',
      'period': '2026',
      'details':
          'Automated deployment pipelines and code quality assurance via GitHub Actions.',
    },
  ];
}
