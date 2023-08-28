class ExerciseTypes1 {
  final int id;
  final String title, description, image;
  final Map<String, dynamic> data;
  ExerciseTypes1(
      {required this.id,
      required this.title,
      required this.description,
      required this.image,
      required this.data});

  get exerciseNum => id;

  get isDone => false;
}

List<ExerciseTypes1> exercise = [
  ExerciseTypes1(
    id: 1,
    title: "AEROBICS",
    description: "Frequency : At least 3 days per week",
    image: "assets/images/aerobics.png",
    data: {
      '1': {
        'id': 1,
        'name': "SIDE LUNGE",
        'description': "",
        'image': "assets/images/running.png",
        'video': "assets/videos/aerobics/warmup1.mp4",
      },
      '2': {
        'id': 2,
        'name': "SKIER HOPS",
        'description': "",
        'image': "assets/images/bikining.png",
        'video': "assets/videos/aerobics/warmup2.mp4",
      },
      '3': {
        'id': 3,
        'name': "MARCHING WITH HIGH KNEES",
        'description': "",
        'image': "assets/images/water_aerobics.jpeg",
        'video': "assets/videos/aerobics/warmup3.mp4",
      },
      '4': {
        'id': 4,
        'name': "ARM CIRCLES",
        'description': "",
        'image': "D:/Dissertation/omkar/code/app/assets/images/chair.png",
        'video': "assets/videos/aerobics/warmup4.mp4",
      },
      '5': {
        'id': 5,
        'name': "ARM CIRCLES",
        'description': "",
        'image': "D:/Dissertation/omkar/code/app/assets/images/chair.png",
        'video': "assets/videos/aerobics/warmup5.mp4",
      },
      '6': {
        'id': 6,
        'name': "ARM CIRCLES",
        'description': "",
        'image': "D:/Dissertation/omkar/code/app/assets/images/chair.png",
        'video': "assets/videos/aerobics/warmup6.mp4",
      },
      '7': {
        'id': 7,
        'name': "ARM CIRCLES",
        'description': "",
        'image': "D:/Dissertation/omkar/code/app/assets/images/chair.png",
        'video': "assets/videos/aerobics/warmup7s.mp4",
      },
    },
  ),
  ExerciseTypes1(
    id: 2,
    title: "ARM STRENGTH",
    description:
        "Frequency : 2-3 days per week, challenging all major muscle groups on nonconsecutive days",
    image: "assets/images/strength.png",
    data: {
      '1': {
        'id': 1,
        'name': "RUNNING",
        'description': "",
        'image': "assets/images/running.png",
      },
      '2': {
        'id': 2,
        'name': "BIKING",
        'description': "",
        'image': "assets/images/bikining.png",
      },
      '3': {
        'id': 3,
        'name': "WATER AEROBICS",
        'description': "",
        'image': "assets/images/water_aerobics.jpeg",
      },
    },
  ),
  ExerciseTypes1(
    id: 3,
    title: "LEG STRENGTH",
    description:
        "Frequency : 2-3 days per week, challenging all major muscle groups on nonconsecutive days",
    image: "assets/images/strength.png",
    data: {
      '1': {
        'id': 1,
        'name': "RUNNING",
        'description': "",
        'image': "assets/images/running.png",
      },
      '2': {
        'id': 2,
        'name': "BIKING",
        'description': "",
        'image': "assets/images/bikining.png",
      },
      '3': {
        'id': 3,
        'name': "WATER AEROBICS",
        'description': "",
        'image': "assets/images/water_aerobics.jpeg",
      },
    },
  ),
  ExerciseTypes1(
    id: 4,
    title: "BALANCE",
    description:
        "Frequency : 2-3 days per week focuse workout, with daily integration as possible",
    image: "assets/images/balance.png",
    data: {
      '1': {
        'id': 1,
        'name': "RUNNING",
        'description': "",
        'image': "assets/images/running.png",
      },
      '2': {
        'id': 2,
        'name': "BIKING",
        'description': "",
        'image': "assets/images/bikining.png",
      },
    },
  ),
  ExerciseTypes1(
    id: 5,
    title: "FLEXIBILITY",
    description:
        "Frequency : 2-3 days per week, with daily being most effective",
    image: "assets/images/flex.png",
    data: {
      '1': {
        'id': 1,
        'name': "RUNNING",
        'description': "",
        'image': "assets/images/running.png",
      },
      '2': {
        'id': 2,
        'name': "BIKING",
        'description': "",
        'image': "assets/images/bikining.png",
      },
    },
  ),
  ExerciseTypes1(
    id: 6,
    title: " GETTING UP FROM FALL",
    description: "",
    image: "assets/images/gettingfromup.png",
    data: {
      '1': {
        'id': 1,
        'name': "RUNNING",
        'description': "",
        'image': "assets/images/running.png",
      },
    },
  ),
  ExerciseTypes1(
    id: 7,
    title: "HOW TO TAKE A TRUN",
    description: "",
    image: "assets/images/turn.png",
    data: {
      '1': {
        'id': 1,
        'name': "RUNNING",
        'description': "",
        'image': "assets/images/running.png",
      },
    },
  ),
  ExerciseTypes1(
    id: 8,
    title: "HAND EXERCISE",
    description: "",
    image:
        "assets/images/hand.png", // Refer this video for this : https://www.youtube.com/watch?v=Ez2GeaMa4c8&t=5s
    data: {
      '1': {
        'id': 1,
        'name': "RUNNING",
        'description': "",
        'image': "assets/images/running.png",
      },
    },
  ),
  ExerciseTypes1(
    id: 9,
    title: "HAND SHAKING EXERCISE",
    description: "",
    image:
        "assets/images/shaking.png", // Refer this video for this : https://www.youtube.com/watch?v=KiyHrpnWmVY
    data: {
      '1': {
        'id': 1,
        'name': "RUNNING",
        'description': "",
        'image': "assets/images/running.png",
      },
    },
  ),
];
