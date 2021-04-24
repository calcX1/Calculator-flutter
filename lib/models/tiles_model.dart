class TilesModel {
  double width;
  double length;
  double quantity;
  double areaTilesFt;

  TilesModel({
    this.width = 0.0,
    this.length = 0.0,
    this.quantity = 0.0,
    this.areaTilesFt = 0.0,
  });

  double get totalAreaTileFt => length * width;
}
