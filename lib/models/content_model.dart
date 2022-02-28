class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent(
      {required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Processus facile',
      image: "images/3.jpg",
      discription: "Trouvez tous vos besoins demostique en   "
          "       un seul endroit. Nous fourissons tous les "
          "  service necessaires pour rendre votre "
          "   experiencende la maison agreable."),
  UnbordingContent(
      title: 'Fast Transportation',
      image: "images/1.jpg",
      discription: "we provide the best transportation serives"
          "  and organize your furniture properly "
          "               prevent any demage"),
  UnbordingContent(
      title: 'personnes expertes ',
      image: "images/2.jpg",
      discription: "Nous ayons les meileurs individual de la"
          "class qui travailent juste pour vous. LLs sont "
          "bien formes capables de gerer tout ce "
          "                    dont vous avez besoin "),
];
