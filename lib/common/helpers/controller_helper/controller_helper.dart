import 'package:poll_power_api_server/domain/params/user/create_user_param.dart';
import 'package:poll_power_openapi/poll_power_openapi.dart';
import '../../../domain/entities/user/user.dart';
import '../../../domain/params/candidate/create_candidate_param.dart';

class ControllerHelper {
  static CreateCandidateParam transformCandidate(Candidate body) {
    return CreateCandidateParam(body.slogan, body.speech ?? "",
        UserEntity.fromJson(body.user.toJson()), body.voteCount);
  }

  static CreateUserParam transformUser(User body) {
    return CreateUserParam(body.email, body.areaOfStudy, body.grade, body.image,
        body.lastName, body.firstName, body.password);
  }
}
