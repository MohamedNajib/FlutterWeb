class NavItemModel {
  final String itemName;
  final Sections sections;

  NavItemModel({required this.itemName, required this.sections});
}

enum Sections { HOME, SERVICE, WHY_US, OUR_LATEST_NEWS, CONTACT, NONE }
