import 'models.dart';

class JobOffer {
  final String company;
  final String logo;
  final String jobPosition;
  final String applicationDate;
  final String interviewDate;
  final String skillInterviewDate;
  final String offerDueDate;
  final String startDate;
  final String salary;

  JobOffer({
    @required this.company,
    @required this.logo,
    @required this.jobPosition,
    @required this.applicationDate,
    @required this.interviewDate,
    @required this.skillInterviewDate,
    @required this.offerDueDate,
    @required this.startDate,
    @required this.salary,
  });
}
