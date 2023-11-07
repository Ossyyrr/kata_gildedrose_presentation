import 'package:kata_gildedrose_presentation/item.dart';
import 'package:kata_gildedrose_presentation/update_quality_strategy.dart';

class AgedBrieStrategy extends UpdateQualityStrategy {
  @override
  void update(Item item) {
    item.quality = increaseQuality(item.quality);
    item.sellIn = decreaseSellIn(item.sellIn);
    if (isExpired(item.sellIn)) {
      item.quality = increaseQuality(item.quality);
    }
  }

  static const String name = "Aged Brie";
}
