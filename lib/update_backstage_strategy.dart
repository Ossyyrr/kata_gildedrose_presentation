import 'package:kata_gildedrose_presentation/item.dart';
import 'package:kata_gildedrose_presentation/update_item_strategy.dart';

class UpdateBackstageStrategy extends UpdateItemStrategy {
  @override
  void update(Item item) {
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
  }
}
