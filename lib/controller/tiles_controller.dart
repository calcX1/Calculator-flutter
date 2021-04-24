import 'package:Calculator/helpers/parse_helper.dart';
import 'package:Calculator/models/tiles_model.dart';

class TileCalculateController {
  final tiles = new TilesModel();

  void setTileLength(String value) {
    tiles.length = ParseHelper.toDouble(value);
  }

  void setTileWidth(String value) {
    tiles.width = ParseHelper.toDouble(value);
  }

  TilesModel calculate() {
    final result = new TilesModel();
    result.areaTilesFt = tiles.length * tiles.width;
    // print(result.areaTilesFt);
  }
}
