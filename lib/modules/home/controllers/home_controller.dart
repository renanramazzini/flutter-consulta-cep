

import '../models/cep_model.dart';
import '../repositories/home_repository.dart';

class HomeController {
  final HomeRepository _homeRepository;
  HomeController(this._homeRepository);

  Future<CEPModel> getCEP(String cep) async {
    final result = await _homeRepository.search(cep);
    return result;
  }
}
