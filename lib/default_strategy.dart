import 'package:kata_gildedrose_presentation/item.dart';
import 'package:kata_gildedrose_presentation/update_item_strategy.dart';

class DefaultStrategy extends UpdateItemStrategy {
  @override
  void update(Item item) {
    item.quality = decreaseQuality(item.quality);
    item.sellIn = decreaseSellIn(item.sellIn);
    if (isExpired(item.sellIn)) {
      item.quality = decreaseQuality(item.quality);
    }
  }
}
