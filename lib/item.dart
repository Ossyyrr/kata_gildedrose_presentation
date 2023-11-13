class Item {
  String name;
  int sellIn;
  int quality;

  Item(this.name, this.sellIn, this.quality);

  int _increaseQuality() {
    if (quality >= 50) return quality;
    return quality++;
  }

  int _decreaseQuality() {
    if (quality <= 0) return quality;
    return quality--;
  }

  int _decreaseSellIn() => sellIn--;
  bool get _isExpired => sellIn < 0;
  void update() {}
}

class AgedBrieItem extends Item {
  AgedBrieItem(super.name, super.sellIn, super.quality);

  @override
  void update() {
    _increaseQuality();
    _decreaseSellIn();
    if (_isExpired) {
      _increaseQuality();
    }
  }
}

class BackstageItem extends Item {
  BackstageItem(super.name, super.sellIn, super.quality);

  @override
  void update() {
    _increaseQuality();
    if (_closeToExpire) {
      _increaseQuality();
    }
    if (_tooCloseToExpire) {
      _increaseQuality();
    }
    _decreaseSellIn();
    if (_isExpired) {
      _setMinQuality();
    }
  }

  void _setMinQuality() => quality = _minQuality;
  int get _minQuality => 0;
  bool get _tooCloseToExpire => sellIn <= 5;
  bool get _closeToExpire => sellIn <= 10;
}

class DefaultItem extends Item {
  DefaultItem(super.name, super.sellIn, super.quality);

  @override
  void update() {
    _decreaseQuality();
    _decreaseSellIn();
    if (_isExpired) {
      _decreaseQuality();
    }
  }
}

class SulfurasItem extends Item {
  SulfurasItem(super.name, super.sellIn, super.quality);

  @override
  void update() {}
}

class ConjuredItem extends Item {
  ConjuredItem(super.name, super.sellIn, super.quality);

  @override
  void update() {
    _decreaseQuality();
    _decreaseQuality();
    _decreaseSellIn();
    if (_isExpired) {
      _decreaseQuality();
    }
  }
}
