class Item {
  String name;
  int sellIn;
  int quality;

  Item(this.name, this.sellIn, this.quality);

  @override
  String toString() => '$name, $sellIn, $quality';
}
