import 'package:kata_gildedrose_presentation/item.dart';
import 'package:kata_gildedrose_presentation/update_item_strategy.dart';

class UpdateAgedBrie extends UpdateItemStrategy {
  @override
  void update(Item item) {
    item.quality = increaseQuality(item.quality);
    item.sellIn = decreaseSellIn(item.sellIn);

    if (isExpired(item.sellIn)) {
      item.quality = increaseQuality(item.quality);
    }
  }
}
