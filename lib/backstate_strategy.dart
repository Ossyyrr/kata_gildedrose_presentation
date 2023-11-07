import 'package:kata_gildedrose_presentation/kata_gildedrose_presentation.dart';
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
}
