enum JobType {
  fullTime,
  partTime,
  remote,
}

class Experience {
  final DateTime startDate;
  final DateTime endDate;
  final String company;
  final String position;
  final JobType type;
  final List<String> responsibilities;

  Experience({
    required this.company,
    required this.position,
    required this.responsibilities,
    required this.startDate,
    required this.endDate,
    this.type = JobType.fullTime,
  });

  static final List<Experience> ksExperiences = [
    Experience(
      company: "BUIDL",
      position: " Blockchain Developer",
      responsibilities: [
        "Design and develop blockchain architecture, ensuring security and performance.",
        "Build and deploy smart contracts and decentralized applications (dApps).",
        "Integrate blockchain solutions with existing systems and applications.",
        "Implement and optimize consensus algorithms (e.g., Proof of Stake, Proof of Work).",
        "Conduct regular audits, testing, and security assessments."
            "Collaborate with cross-functional teams and maintain comprehensive documentation.."
            "Stay updated on the latest blockchain technologies and trends.",
      ],
      startDate: DateTime(2023, 8),
      endDate: DateTime.now(),
    ),
    Experience(
      company: "Ace Embeded Ltd",
      position: "Mid-Senior Front-End Developer",
      responsibilities: [
        "Closely collaborated with mobile developers, backend developers, UI/ UX designers and QA team multiple apps",
        """Mainly responsible for 
          Project Architecture
          Authentication flows,
          Third-party integrations,
        """,
      ],
      startDate: DateTime(2022, 1),
      endDate: DateTime(2023, 4),
    ),
    Experience(
      company: "Billyronks Global Ltd",
      position: "Full-Stack Software Developer",
      responsibilities: [
        "I collaborate with experienced developers to design, develop, and maintain software applications that enhance our customers' telecommunication experience. I contribute to the full software development lifecycle, from gathering requirements and designing user interfaces to coding, testing, and debugging.",
        "develop, and maintain software applications that enhance our customers' telecommunication experience.",
        
      ],
      startDate: DateTime(2020, 2),
      endDate: DateTime(2021, 12),
    ),
    Experience(
      company: "Cyblack",
      position: "Intern",
      responsibilities: [
        "Started my journey as backend developer using Php & Laravel",
        "Closely collaborated with Mobile App Development team to ensure secure and reliable API development",
        "Worked in Fastbooking.com.pk ( A Logistics Management Website built with Laravel )",
      ],
      startDate: DateTime(2023, 5),
      endDate: DateTime(2023, 7),
    ),
  ];
}
