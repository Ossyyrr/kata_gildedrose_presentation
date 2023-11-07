import 'package:kata_gildedrose_presentation/kata_gildedrose_presentation.dart';
import 'package:kata_gildedrose_presentation/update_quality_strategy.dart';

class DefaultStrategy extends UpdateQualityStrategy {
  @override
  void update(Item item) {
    item.quality = decreaseQuality(item.quality);
    item.sellIn = decreaseSellIn(item.sellIn);
    if (isExpired(item.sellIn)) {
      item.quality = decreaseQuality(item.quality);
    }
  }
}
