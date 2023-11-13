import 'package:kata_gildedrose_presentation/factory_strategy.dart';
import 'package:kata_gildedrose_presentation/item.dart';

class GildedRose {
  List<Item> items;

  GildedRose(this.items);

  void updateQuality() {
    for (var item in items) {
      Item newItem = ItemFactory().getItemByName(item);
      newItem.update();
      item.quality = newItem.quality;
      item.sellIn = newItem.sellIn;
    }
  }
}
