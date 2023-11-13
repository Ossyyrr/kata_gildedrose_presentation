import 'package:kata_gildedrose_presentation/cojured_strategy.dart';
import 'package:kata_gildedrose_presentation/default_strategy.dart';
import 'package:kata_gildedrose_presentation/update_aged_brie.dart';
import 'package:kata_gildedrose_presentation/update_backstage_strategy.dart';
import 'package:kata_gildedrose_presentation/update_item_strategy.dart';
import 'package:kata_gildedrose_presentation/update_sulfuras_strategy.dart';

class Factorystrategy {
  UpdateItemStrategy getStrategy(String name) {
    Map<String, UpdateItemStrategy> strategies = {
      "Sulfuras, Hand of Ragnaros": UpdateSulfurasStrategy(),
      "Backstage passes to a TAFKAL80ETC concert": UpdateBackstageStrategy(),
      "Aged Brie": UpdateAgedBrie(),
      'Conjured': ConjuredStrategy(),
    };

    return strategies[name] ?? DefaultStrategy();
  }
}
