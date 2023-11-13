import 'package:kata_gildedrose_presentation/item.dart';

class ItemFactory {
  Item getItemByName(Item item) {
    Map<String, Item> strategies = {
      "Sulfuras, Hand of Ragnaros":
          SulfurasItem(item.name, item.sellIn, item.quality),
      "Backstage passes to a TAFKAL80ETC concert":
          BackstageItem(item.name, item.sellIn, item.quality),
      "Aged Brie": AgedBrieItem(item.name, item.sellIn, item.quality),
      'Conjured': ConjuredItem(item.name, item.sellIn, item.quality),
    };

    return strategies[item.name] ??
        DefaultItem(item.name, item.sellIn, item.quality);
  }
}
