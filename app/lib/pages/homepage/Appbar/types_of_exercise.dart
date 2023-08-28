class ExerciseTypes {
  final int id;
  final String title, description, image;

  ExerciseTypes(
      {required this.id,
      required this.title,
      required this.description,
      required this.image});

  get exerciseNum => id;

  get isDone => false;
}

List<ExerciseTypes> exercise = [
  ExerciseTypes(
    id: 1,
    title: "AEROBICS",
    description: "Frequency : At least 3 days per week",
    image: "assets/images/aerobics.png",
  ),
  ExerciseTypes(
    id: 2,
    title: "STRENGTH",
    description:
        "Frequency : 2-3 days per week, challenging all major muscle groups on nonconsecutive days",
    image: "assets/images/strength.png",
  ),
  ExerciseTypes(
    id: 3,
    title: "BALANCE",
    description:
        "Frequency : 2-3 days per week focuse workout, with daily integration as possible",
    image: "assets/images/balance.png",
  ),
  ExerciseTypes(
    id: 4,
    title: "FLEXIBILITY",
    description:
        "Frequency : 2-3 days per week, with daily being most effective",
    image: "assets/images/flex.png",
  ),
];
