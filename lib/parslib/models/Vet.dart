// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

class Vet {
  final int id;
  final String title, description;
  final List<String> images;
  final bool isPopular;

  Vet({
    required this.id,
    required this.images,
    this.isPopular = false,
    required this.title,
    required this.description,
  });
}

List<Vet> demoVet = [
  Vet(
    id: 1,
    images: [
      "assets/demo/profile1.jpg",
    ],
    title: "Can Uçar",
    description: "Ben Can. Telefon uzmanıyım.",
    isPopular: true,
  ),
  Vet(
    id: 2,
    images: [
      "assets/demo/profile2.jpg",
    ],
    title: "Merve Akar",
    description: description,
    isPopular: true,
  ),
  Vet(
    id: 3,
    images: [
      "assets/demo/profile3.jpg",
    ],
    title: "Esen Türk",
    description: description,
    isPopular: true,
  ),
];

const String description =
    "Ben Esen. Telefonlaranıza veya bilgisayarlarınızı sizin için inceleyip alabilirim.";
