import 'package:job_search_ui/models/models.dart';

import '../assets.dart';

final user = User(name: "Jain Doe", dp: Assets.dp, age: 23, messageCount: 25);

final jobOffer = JobOffer(
  company: "Google Ink",
  logo: Assets.google,
  jobPosition: "Product Designer",
  applicationDate: "20",
  interviewDate: "13",
  skillInterviewDate: "14",
  offerDueDate: "23",
  startDate: "Aug 28",
  salary: "\$ 130k",
);

final jobApplications = [
  JobApplication(
    companyName: "Apple Ink.",
    logo: Assets.apple,
    position: "Product Designer",
    salary: "\$140k",
  ),
  JobApplication(
    companyName: "Microsoft",
    logo: Assets.microsoft,
    position: "Visual Designer",
    salary: "\$120k",
  ),
  JobApplication(
    companyName: "Netflix",
    logo: Assets.netflix,
    position: "Project Manager",
    salary: "\$200k",
  ),
];
