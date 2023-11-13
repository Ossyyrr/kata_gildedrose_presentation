import 'package:kata_gildedrose_presentation/factory_strategy.dart';
import 'package:kata_gildedrose_presentation/item.dart';
import 'package:kata_gildedrose_presentation/update_item_strategy.dart';

class GildedRose {
  List<Item> items;

  GildedRose(this.items);

  void updateQuality() {
    for (var item in items) {
      UpdateItemStrategy updateItemStrategy =
          Factorystrategy().getStrategy(item.name);
      updateItemStrategy.update(item);
    }
  }
}
