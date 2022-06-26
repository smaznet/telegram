// Auto generated file

import '../../utils.dart';
import '../../extensions/binary_reader.dart';
import '../base_contructor.dart';
import '../constructors/constructors.dart';

class BroadcastStats extends BaseConstructor {
  static const CONSTRUCTOR_ID = 3187114900;
  static const SUBCLASS_OF_ID = 2146587688;
  final classType = "constructor";
  final ID = 3187114900;
  StatsDateRangeDays period;
  StatsAbsValueAndPrev followers;
  StatsAbsValueAndPrev viewsPerPost;
  StatsAbsValueAndPrev sharesPerPost;
  StatsPercentValue enabledNotifications;
  StatsGraphBase growthGraph;
  StatsGraphBase followersGraph;
  StatsGraphBase muteGraph;
  StatsGraphBase topHoursGraph;
  StatsGraphBase interactionsGraph;
  StatsGraphBase ivInteractionsGraph;
  StatsGraphBase viewsBySourceGraph;
  StatsGraphBase newFollowersBySourceGraph;
  StatsGraphBase languagesGraph;
  List<MessageInteractionCounters> recentMessageInteractions;

  BroadcastStats(
      {required this.period,
      required this.followers,
      required this.viewsPerPost,
      required this.sharesPerPost,
      required this.enabledNotifications,
      required this.growthGraph,
      required this.followersGraph,
      required this.muteGraph,
      required this.topHoursGraph,
      required this.interactionsGraph,
      required this.ivInteractionsGraph,
      required this.viewsBySourceGraph,
      required this.newFollowersBySourceGraph,
      required this.languagesGraph,
      required this.recentMessageInteractions});

  static BroadcastStats fromReader(BinaryReader reader) {
    var len;
    var period = reader.tgReadObject();
    var followers = reader.tgReadObject();
    var viewsPerPost = reader.tgReadObject();
    var sharesPerPost = reader.tgReadObject();
    var enabledNotifications = reader.tgReadObject();
    var growthGraph = reader.tgReadObject();
    var followersGraph = reader.tgReadObject();
    var muteGraph = reader.tgReadObject();
    var topHoursGraph = reader.tgReadObject();
    var interactionsGraph = reader.tgReadObject();
    var ivInteractionsGraph = reader.tgReadObject();
    var viewsBySourceGraph = reader.tgReadObject();
    var newFollowersBySourceGraph = reader.tgReadObject();
    var languagesGraph = reader.tgReadObject();
    var _vectorrecentMessageInteractions = reader.readInt();
    if (_vectorrecentMessageInteractions != 481674261)
      throw Exception('Wrong vectorId');
    List<MessageInteractionCounters> recentMessageInteractions = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      recentMessageInteractions.add(reader.tgReadObject());
    }
    return BroadcastStats(
        period: period,
        followers: followers,
        viewsPerPost: viewsPerPost,
        sharesPerPost: sharesPerPost,
        enabledNotifications: enabledNotifications,
        growthGraph: growthGraph,
        followersGraph: followersGraph,
        muteGraph: muteGraph,
        topHoursGraph: topHoursGraph,
        interactionsGraph: interactionsGraph,
        ivInteractionsGraph: ivInteractionsGraph,
        viewsBySourceGraph: viewsBySourceGraph,
        newFollowersBySourceGraph: newFollowersBySourceGraph,
        languagesGraph: languagesGraph,
        recentMessageInteractions: recentMessageInteractions);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(3187114900, 4),
      (this.period.getBytes()),
      (this.followers.getBytes()),
      (this.viewsPerPost.getBytes()),
      (this.sharesPerPost.getBytes()),
      (this.enabledNotifications.getBytes()),
      (this.growthGraph.getBytes()),
      (this.followersGraph.getBytes()),
      (this.muteGraph.getBytes()),
      (this.topHoursGraph.getBytes()),
      (this.interactionsGraph.getBytes()),
      (this.ivInteractionsGraph.getBytes()),
      (this.viewsBySourceGraph.getBytes()),
      (this.newFollowersBySourceGraph.getBytes()),
      (this.languagesGraph.getBytes()),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.recentMessageInteractions.length, 4,
          little: true, signed: true),
      this
          .recentMessageInteractions.map((x) => x.getBytes())
          .expand((element) => element),
    ].expand((element) => element).toList();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'BroadcastStats{ID: $ID, period: $period, followers: $followers, viewsPerPost: $viewsPerPost, sharesPerPost: $sharesPerPost, enabledNotifications: $enabledNotifications, growthGraph: $growthGraph, followersGraph: $followersGraph, muteGraph: $muteGraph, topHoursGraph: $topHoursGraph, interactionsGraph: $interactionsGraph, ivInteractionsGraph: $ivInteractionsGraph, viewsBySourceGraph: $viewsBySourceGraph, newFollowersBySourceGraph: $newFollowersBySourceGraph, languagesGraph: $languagesGraph, recentMessageInteractions: $recentMessageInteractions}';
  }
}

class MegagroupStats extends BaseConstructor {
  static const CONSTRUCTOR_ID = 4018141462;
  static const SUBCLASS_OF_ID = 1532608141;
  final classType = "constructor";
  final ID = 4018141462;
  StatsDateRangeDays period;
  StatsAbsValueAndPrev members;
  StatsAbsValueAndPrev messages;
  StatsAbsValueAndPrev viewers;
  StatsAbsValueAndPrev posters;
  StatsGraphBase growthGraph;
  StatsGraphBase membersGraph;
  StatsGraphBase newMembersBySourceGraph;
  StatsGraphBase languagesGraph;
  StatsGraphBase messagesGraph;
  StatsGraphBase actionsGraph;
  StatsGraphBase topHoursGraph;
  StatsGraphBase weekdaysGraph;
  List<StatsGroupTopPoster> topPosters;
  List<StatsGroupTopAdmin> topAdmins;
  List<StatsGroupTopInviter> topInviters;
  List<UserBase> users;

  MegagroupStats(
      {required this.period,
      required this.members,
      required this.messages,
      required this.viewers,
      required this.posters,
      required this.growthGraph,
      required this.membersGraph,
      required this.newMembersBySourceGraph,
      required this.languagesGraph,
      required this.messagesGraph,
      required this.actionsGraph,
      required this.topHoursGraph,
      required this.weekdaysGraph,
      required this.topPosters,
      required this.topAdmins,
      required this.topInviters,
      required this.users});

  static MegagroupStats fromReader(BinaryReader reader) {
    var len;
    var period = reader.tgReadObject();
    var members = reader.tgReadObject();
    var messages = reader.tgReadObject();
    var viewers = reader.tgReadObject();
    var posters = reader.tgReadObject();
    var growthGraph = reader.tgReadObject();
    var membersGraph = reader.tgReadObject();
    var newMembersBySourceGraph = reader.tgReadObject();
    var languagesGraph = reader.tgReadObject();
    var messagesGraph = reader.tgReadObject();
    var actionsGraph = reader.tgReadObject();
    var topHoursGraph = reader.tgReadObject();
    var weekdaysGraph = reader.tgReadObject();
    var _vectortopPosters = reader.readInt();
    if (_vectortopPosters != 481674261) throw Exception('Wrong vectorId');
    List<StatsGroupTopPoster> topPosters = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      topPosters.add(reader.tgReadObject());
    }
    var _vectortopAdmins = reader.readInt();
    if (_vectortopAdmins != 481674261) throw Exception('Wrong vectorId');
    List<StatsGroupTopAdmin> topAdmins = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      topAdmins.add(reader.tgReadObject());
    }
    var _vectortopInviters = reader.readInt();
    if (_vectortopInviters != 481674261) throw Exception('Wrong vectorId');
    List<StatsGroupTopInviter> topInviters = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      topInviters.add(reader.tgReadObject());
    }
    var _vectorusers = reader.readInt();
    if (_vectorusers != 481674261) throw Exception('Wrong vectorId');
    List<UserBase> users = [];
    len = reader.readInt();
    for (var i = 0; i < len; i++) {
      users.add(reader.tgReadObject());
    }
    return MegagroupStats(
        period: period,
        members: members,
        messages: messages,
        viewers: viewers,
        posters: posters,
        growthGraph: growthGraph,
        membersGraph: membersGraph,
        newMembersBySourceGraph: newMembersBySourceGraph,
        languagesGraph: languagesGraph,
        messagesGraph: messagesGraph,
        actionsGraph: actionsGraph,
        topHoursGraph: topHoursGraph,
        weekdaysGraph: weekdaysGraph,
        topPosters: topPosters,
        topAdmins: topAdmins,
        topInviters: topInviters,
        users: users);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(4018141462, 4),
      (this.period.getBytes()),
      (this.members.getBytes()),
      (this.messages.getBytes()),
      (this.viewers.getBytes()),
      (this.posters.getBytes()),
      (this.growthGraph.getBytes()),
      (this.membersGraph.getBytes()),
      (this.newMembersBySourceGraph.getBytes()),
      (this.languagesGraph.getBytes()),
      (this.messagesGraph.getBytes()),
      (this.actionsGraph.getBytes()),
      (this.topHoursGraph.getBytes()),
      (this.weekdaysGraph.getBytes()),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.topPosters.length, 4,
          little: true, signed: true),
      this
          .topPosters.map((x) => x.getBytes())
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.topAdmins.length, 4,
          little: true, signed: true),
      this
          .topAdmins.map((x) => x.getBytes())
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.topInviters.length, 4,
          little: true, signed: true),
      this
          .topInviters.map((x) => x.getBytes())
          .expand((element) => element),
      readBufferFromBigInt(0x15c4b51c, 4, little: false, signed: false),
      readBufferFromBigInt(this.users.length, 4, little: true, signed: true),
      this
          .users.map((x) => x.getBytes())
          .expand((element) => element),
    ].expand((element) => element).toList();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'MegagroupStats{ID: $ID, period: $period, members: $members, messages: $messages, viewers: $viewers, posters: $posters, growthGraph: $growthGraph, membersGraph: $membersGraph, newMembersBySourceGraph: $newMembersBySourceGraph, languagesGraph: $languagesGraph, messagesGraph: $messagesGraph, actionsGraph: $actionsGraph, topHoursGraph: $topHoursGraph, weekdaysGraph: $weekdaysGraph, topPosters: $topPosters, topAdmins: $topAdmins, topInviters: $topInviters, users: $users}';
  }
}

class MessageStats extends BaseConstructor {
  static const CONSTRUCTOR_ID = 2308567701;
  static const SUBCLASS_OF_ID = 2516886306;
  final classType = "constructor";
  final ID = 2308567701;
  StatsGraphBase viewsGraph;

  MessageStats({required this.viewsGraph});

  static MessageStats fromReader(BinaryReader reader) {
    var viewsGraph = reader.tgReadObject();
    return MessageStats(viewsGraph: viewsGraph);
  }

  @override
  List<int> getBytes() {
    return [
      readBufferFromBigInt(2308567701, 4),
      (this.viewsGraph.getBytes()),
    ].expand((element) => element).toList();
  }

  @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }

  @override
  String toString() {
    return 'MessageStats{ID: $ID, viewsGraph: $viewsGraph}';
  }
}
