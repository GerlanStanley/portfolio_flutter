class ProjectModel {
  final String title;
  final String description;
  final String? image;
  final String? urlPlayStore;
  final String? urlAppStore;
  final String? urlWeb;

  ProjectModel({
    required this.title,
    required this.description,
    this.image,
    this.urlPlayStore,
    this.urlAppStore,
    this.urlWeb,
  });
}
