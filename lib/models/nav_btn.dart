class NaviButton {
  String title;
  bool isSelected;
  int pageNumber;

  NaviButton({
    required this.title,
    required this.pageNumber,
    this.isSelected = false,
  });
}
