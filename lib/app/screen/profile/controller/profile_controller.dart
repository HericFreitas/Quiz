import 'package:mobx/mobx.dart';
import 'package:quiz/app/screen/login/model/user.dart';
import 'package:quiz/app/screen/profile/repository/profile_repository.dart';

part 'profile_controller.g.dart';

class ProfileController = _ProfileControllerBase with _$ProfileController;

abstract class _ProfileControllerBase with Store {

  ProfileRepository _repository;

  _ProfileControllerBase() {
    _repository = ProfileRepository();
  }

  @observable
  bool editable = false;

  @action
  void setEditable(value) => editable = value;

  @observable
  UserModel user = UserModel();

  @action
  void setUser(value) {
    user = value;
  }

  @action
  void save() {
    setEditable(false);
    _repository.update(user);
  }

  @action
  Future<UserModel> getCurrentUser() async {
    final snapshot = await _repository.getUser();
    final userModel = UserModel.fromMap(snapshot.data);
    setUser(userModel);
    return userModel;
  }
}