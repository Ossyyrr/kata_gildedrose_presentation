import 'package:kata_gildedrose_presentation/aged_brie_strategy.dart';
import 'package:kata_gildedrose_presentation/backstate_strategy.dart';
import 'package:kata_gildedrose_presentation/default_strategy.dart';
import 'package:kata_gildedrose_presentation/sulfuras_strategy.dart';
import 'package:kata_gildedrose_presentation/update_quality_strategy.dart';

class StrategyFactory {
  UpdateQualityStrategy getStrategy(String name) {
    switch (name) {
      case SulfurasStrategy.name:
        return SulfurasStrategy();
      case AgedBrieStrategy.name:
        return AgedBrieStrategy();
      case BackstateStrategy.name:
        return BackstateStrategy();
      default:
        return DefaultStrategy();
    }
  }
}
