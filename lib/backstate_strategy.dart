import 'package:kata_gildedrose_presentation/item.dart';
import 'package:kata_gildedrose_presentation/update_quality_strategy.dart';

class BackstateStrategy extends UpdateQualityStrategy {
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

  static const String name = "Backstage passes to a TAFKAL80ETC concert";
}
