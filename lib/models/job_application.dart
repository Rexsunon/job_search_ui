import 'models.dart';

class JobApplication {
  final String companyName;
  final String logo;
  final String position;
  final String salary;

  JobApplication({
    @required this.companyName,
    @required this.logo,
    @required this.position,
    @required this.salary,
  });
}
