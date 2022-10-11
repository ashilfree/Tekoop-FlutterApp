import 'package:get/get.dart';
import 'package:tekoop/features/home/domain/usecases/set_address.dart';

import '../../../features/home/data/datasources/category_local_data_source.dart';
import '../../../features/home/data/datasources/category_remote_data_source.dart';
import '../../../features/home/data/datasources/post_local_data_source.dart';
import '../../../features/home/data/datasources/post_remote_data_source.dart';
import '../../../features/home/data/repositories/category_repository_impl.dart';
import '../../../features/home/data/repositories/post_repository_impl.dart';
import '../../../features/home/domain/repositories/category_repository.dart';
import '../../../features/home/domain/repositories/post_repository.dart';
import '../../../features/home/domain/usecases/get_categories.dart';
import '../../../features/home/domain/usecases/get_posts.dart';
import '../../../features/home/domain/usecases/set_image.dart';
import '../../../features/home/presentations/controllers/home_controller.dart';
import '../../../features/home/presentations/controllers/post_controller.dart';
import '../../network/network_info.dart';
import '../../services/http_client.dart';
import '../../services/local_storage.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PostRemoteDataSource>(
          () => PostRemoteDataSourceImpl(client:Get.find<HttpClient>()),
      fenix: true,
    );
    Get.lazyPut<PostLocalDataSource>(
          () => PostLocalDataSourceImpl(localStorage:Get.find<LocalStorage>()),
      fenix: true,
    );
    Get.lazyPut<CategoryRemoteDataSource>(
          () => CategoryRemoteDataSourceImpl(client:Get.find<HttpClient>()),
      fenix: true,
    );
    Get.lazyPut<CategoryLocalDataSource>(
          () => CategoryLocalDataSourceImpl(localStorage:Get.find<LocalStorage>()),
      fenix: true,
    );
    // Get.lazyPut<CategoryRepository>(
    //   () => CategoryRepositoryImpl(Get.find<HttpClient>()),
    //   fenix: true,
    // );
    Get.lazyPut<PostRepository>(
      () => PostRepositoryImpl(localDataSource: Get.find<PostLocalDataSource>(),remoteDataSource: Get.find<PostRemoteDataSource>(),networkInfo: Get.find<NetworkInfo>()),
      fenix: true,
    );
    Get.lazyPut<CategoryRepository>(
          () => CategoryRepositoryImpl(localDataSource: Get.find<CategoryLocalDataSource>(),remoteDataSource: Get.find<CategoryRemoteDataSource>(),networkInfo: Get.find<NetworkInfo>()),
      fenix: true,
    );
    Get.lazyPut<GetCategories>(
            () => GetCategories(Get.find<CategoryRepository>()),
      fenix: true,
    );
    Get.lazyPut<GetPosts>(
          () => GetPosts(Get.find<PostRepository>()),
      fenix: true,
    );
        Get.lazyPut<SetImage>(
          () => SetImage(Get.find<PostRepository>()),
      fenix: true,
    );
    Get.lazyPut<SetAddress>(
          () => SetAddress(Get.find<PostRepository>()),
      fenix: true,
    );
    Get.lazyPut<HomeController>(
      () => HomeController(
          Get.find<GetCategories>(), Get.find<GetPosts>()),
      fenix: true,
    );
    Get.lazyPut<PostController>(
      () => PostController(Get.find<SetImage>(), Get.find<SetAddress>()),
      fenix: true,
    );
  }
}
