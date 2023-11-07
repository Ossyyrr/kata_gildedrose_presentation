class GildedRose {
  List<Item> items;

  GildedRose(this.items);

  void updateQuality() {
    for (var item in items) {
      if (isSulfuras(item.name)) {
      } else if (isAgedBrie(item.name)) {
        item.quality = increaseQuality(item.quality);
        item.sellIn = decreaseSellIn(item.sellIn);
        if (isExpired(item.sellIn)) {
          item.quality = increaseQuality(item.quality);
        }
      } else if (isBackstage(item.name)) {
        item.quality = increaseQuality(item.quality);
        if (closeToExpire(item.sellIn)) {
          item.quality = increaseQuality(item.quality);
        }
        if (tooCloseToEspire(item.sellIn)) {
          item.quality = increaseQuality(item.quality);
        }
        item.sellIn = decreaseSellIn(item.sellIn);
        if (isExpired(item.sellIn)) {
          item.quality = setMinQuality();
        }
      } else {
        item.quality = decreaseQuality(item.quality);
        item.sellIn = decreaseSellIn(item.sellIn);
        if (isExpired(item.sellIn)) {
          item.quality = decreaseQuality(item.quality);
        }
      }
    }
  }

  bool isExpired(int sellIn) => sellIn < 0;
  int decreaseSellIn(int sellIn) => sellIn - 1;
  bool tooCloseToEspire(int sellIn) => sellIn <= 5;
  bool closeToExpire(int sellIn) => sellIn <= 10;

  int increaseQuality(int quality) {
    if (!qualityLessLimit(quality)) return quality;
    return quality + 1;
  }

  bool qualityLessLimit(int quality) => quality < 50;
  int decreaseQuality(int quality) {
    if (!hasQuality(quality)) return quality;
    return quality - 1;
  }

  bool hasQuality(int quality) => quality > 0;
  int setMinQuality() => 0;

  bool isSulfuras(String name) => name == "Sulfuras, Hand of Ragnaros";
  bool isBackstage(String name) =>
      name == "Backstage passes to a TAFKAL80ETC concert";
  bool isAgedBrie(String name) => name == "Aged Brie";
}

class Item {
  String name;
  int sellIn;
  int quality;

  Item(this.name, this.sellIn, this.quality);

  @override
  String toString() => '$name, $sellIn, $quality';
}
