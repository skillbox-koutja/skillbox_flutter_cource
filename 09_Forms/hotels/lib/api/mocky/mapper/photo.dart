import 'package:hotels/domain/entity/photo.dart';

class ApiAssetPhoto extends Photo {
  ApiAssetPhoto(String imageName) : super(path: 'assets/images/$imageName');
}
