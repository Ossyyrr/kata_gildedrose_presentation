import 'package:kata_gildedrose_presentation/kata_gildedrose_presentation.dart';

abstract class UpdateQualityStrategy {
  void update(Item item);

  bool isExpired(int sellIn) => sellIn < 0;
  int decreaseSellIn(int sellIn) => sellIn - 1;
  bool tooCloseToEspire(int sellIn) => sellIn <= 5;
  bool closeToExpire(int sellIn) => sellIn <= 10;

  int increaseQuality(int quality) {
    if (!qualityLessLimit(quality)) return quality;
    return quality + 1;
  }

  bool qualityLessLimit(int quality) => quality < 50;
  int decreaseQuality(int quality) {
    if (!hasQuality(quality)) return quality;
    return quality - 1;
  }

  bool hasQuality(int quality) => quality > 0;
  int setMinQuality() => 0;
}
