import 'package:kata_gildedrose_presentation/aged_brie_strategy.dart';
import 'package:kata_gildedrose_presentation/backstate_strategy.dart';
import 'package:kata_gildedrose_presentation/default_strategy.dart';
import 'package:kata_gildedrose_presentation/sulfuras_strategy.dart';
import 'package:kata_gildedrose_presentation/update_quality_strategy.dart';

class GildedRose {
  List<Item> items;

  GildedRose(this.items);

  void updateQuality() {
    late UpdateQualityStrategy updateQualityStrategy;

    for (final item in items) {
      if (isSulfuras(item.name)) {
        updateQualityStrategy = SulfurasStrategy();
      } else if (isAgedBrie(item.name)) {
        updateQualityStrategy = AgedBrieStrategy();
      } else if (isBackstage(item.name)) {
        updateQualityStrategy = BackstateStrategy();
      } else {
        updateQualityStrategy = DefaultStrategy();
      }
      updateQualityStrategy.update(item);
    }
  }

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
