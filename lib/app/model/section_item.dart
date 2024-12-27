// Section Item Model
class SectionItem {
  final String title;
  final String location;
  final String? imagePath;

  SectionItem({
    required this.title,
    required this.location,
    this.imagePath,
  });
}