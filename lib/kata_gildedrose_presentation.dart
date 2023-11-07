import 'package:kata_gildedrose_presentation/item.dart';
import 'package:kata_gildedrose_presentation/strategy_factory.dart';
import 'package:kata_gildedrose_presentation/update_quality_strategy.dart';

class GildedRose {
  List<Item> items;

  GildedRose(this.items);

  void updateQuality() {
    late UpdateQualityStrategy updateQualityStrategy;
    for (final item in items) {
      updateQualityStrategy = StrategyFactory().getStrategy(item.name);
      updateQualityStrategy.update(item);
    }
  }
}
