class CreateVoteParam {
  final String candidateUuid;
  final String userUiid;
  final DateTime votedAt;

  CreateVoteParam(this.candidateUuid, this.userUiid, this.votedAt);
}
