class UserListModel {
  bool? status;
  List<Data>? data;

  UserListModel({this.status, this.data});

  UserListModel.fromJson(Map<dynamic, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  dynamic? name;
  dynamic? code;
  dynamic? scope;
  dynamic? votingType;
  dynamic? endGameCondition;
  dynamic? roundTime;
  Null? scoreLimit;
  dynamic? maxRounds;
  dynamic? maxPlayers;
  dynamic? status;
  dynamic? hadSuddenDeath;
  dynamic? winnerUserId;
  dynamic? firebaseId;
  dynamic? userId;
  dynamic? basedGameId;
  dynamic? previousGameId;
  dynamic? startedAt;
  dynamic? completedAt;
  dynamic? createdAt;
  dynamic? updatedAt;

  Data(
      {this.id,
        this.name,
        this.code,
        this.scope,
        this.votingType,
        this.endGameCondition,
        this.roundTime,
        this.scoreLimit,
        this.maxRounds,
        this.maxPlayers,
        this.status,
        this.hadSuddenDeath,
        this.winnerUserId,
        this.firebaseId,
        this.userId,
        this.basedGameId,
        this.previousGameId,
        this.startedAt,
        this.completedAt,
        this.createdAt,
        this.updatedAt});

  Data.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    name = json['name'];
    code = json['code'];
    scope = json['scope'];
    votingType = json['voting_type'];
    endGameCondition = json['end_game_condition'];
    roundTime = json['round_time'];
    scoreLimit = json['score_limit'];
    maxRounds = json['max_rounds'];
    maxPlayers = json['max_players'];
    status = json['status'];
    hadSuddenDeath = json['had_sudden_death'];
    winnerUserId = json['winner_user_id'];
    firebaseId = json['firebase_id'];
    userId = json['user_id'];
    basedGameId = json['based_game_id'];
    previousGameId = json['previous_game_id'];
    startedAt = json['started_at'];
    completedAt = json['completed_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['code'] = this.code;
    data['scope'] = this.scope;
    data['voting_type'] = this.votingType;
    data['end_game_condition'] = this.endGameCondition;
    data['round_time'] = this.roundTime;
    data['score_limit'] = this.scoreLimit;
    data['max_rounds'] = this.maxRounds;
    data['max_players'] = this.maxPlayers;
    data['status'] = this.status;
    data['had_sudden_death'] = this.hadSuddenDeath;
    data['winner_user_id'] = this.winnerUserId;
    data['firebase_id'] = this.firebaseId;
    data['user_id'] = this.userId;
    data['based_game_id'] = this.basedGameId;
    data['previous_game_id'] = this.previousGameId;
    data['started_at'] = this.startedAt;
    data['completed_at'] = this.completedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
