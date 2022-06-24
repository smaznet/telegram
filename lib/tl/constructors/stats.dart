import '../../utils.dart';
import '../../extensions/binary_reader.dart';

class BroadcastStats {
    static const CONSTRUCTOR_ID = 3187114900;
    static const SUBCLASS_OF_ID = 2146587688;
    final classType = "constructor";
    final ID = 3187114900;
	var period;
	var followers;
	var viewsPerPost;
	var sharesPerPost;
	var enabledNotifications;
	var growthGraph;
	var followersGraph;
	var muteGraph;
	var topHoursGraph;
	var interactionsGraph;
	var ivInteractionsGraph;
	var viewsBySourceGraph;
	var newFollowersBySourceGraph;
	var languagesGraph;
	List<dynamic> recentMessageInteractions;


	BroadcastStats({required this.period, required this.followers, required this.viewsPerPost, required this.sharesPerPost, required this.enabledNotifications, required this.growthGraph, required this.followersGraph, required this.muteGraph, required this.topHoursGraph, required this.interactionsGraph, required this.ivInteractionsGraph, required this.viewsBySourceGraph, required this.newFollowersBySourceGraph, required this.languagesGraph, required this.recentMessageInteractions});

	static BroadcastStats fromReader(BinaryReader reader) {
	var temp,len;var period = reader.tgReadObject();var followers = reader.tgReadObject();var viewsPerPost = reader.tgReadObject();var sharesPerPost = reader.tgReadObject();var enabledNotifications = reader.tgReadObject();var growthGraph = reader.tgReadObject();var followersGraph = reader.tgReadObject();var muteGraph = reader.tgReadObject();var topHoursGraph = reader.tgReadObject();var interactionsGraph = reader.tgReadObject();var ivInteractionsGraph = reader.tgReadObject();var viewsBySourceGraph = reader.tgReadObject();var newFollowersBySourceGraph = reader.tgReadObject();var languagesGraph = reader.tgReadObject();reader.readInt();
List<dynamic> recentMessageInteractions = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		recentMessageInteractions.add(reader.tgReadObject());
}		return new BroadcastStats(period : period, followers : followers, viewsPerPost : viewsPerPost, sharesPerPost : sharesPerPost, enabledNotifications : enabledNotifications, growthGraph : growthGraph, followersGraph : followersGraph, muteGraph : muteGraph, topHoursGraph : topHoursGraph, interactionsGraph : interactionsGraph, ivInteractionsGraph : ivInteractionsGraph, viewsBySourceGraph : viewsBySourceGraph, newFollowersBySourceGraph : newFollowersBySourceGraph, languagesGraph : languagesGraph, recentMessageInteractions : recentMessageInteractions);
	}
	List<int> getBytes(){return [readBufferFromBigInt(3187114900,4),(this.period.getBytes() as List<int>),(this.followers.getBytes() as List<int>),(this.viewsPerPost.getBytes() as List<int>),(this.sharesPerPost.getBytes() as List<int>),(this.enabledNotifications.getBytes() as List<int>),(this.growthGraph.getBytes() as List<int>),(this.followersGraph.getBytes() as List<int>),(this.muteGraph.getBytes() as List<int>),(this.topHoursGraph.getBytes() as List<int>),(this.interactionsGraph.getBytes() as List<int>),(this.ivInteractionsGraph.getBytes() as List<int>),(this.viewsBySourceGraph.getBytes() as List<int>),(this.newFollowersBySourceGraph.getBytes() as List<int>),(this.languagesGraph.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.recentMessageInteractions!.length,4,little:true,signed:true),this.recentMessageInteractions!.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class MegagroupStats {
    static const CONSTRUCTOR_ID = 4018141462;
    static const SUBCLASS_OF_ID = 1532608141;
    final classType = "constructor";
    final ID = 4018141462;
	var period;
	var members;
	var messages;
	var viewers;
	var posters;
	var growthGraph;
	var membersGraph;
	var newMembersBySourceGraph;
	var languagesGraph;
	var messagesGraph;
	var actionsGraph;
	var topHoursGraph;
	var weekdaysGraph;
	List<dynamic> topPosters;
	List<dynamic> topAdmins;
	List<dynamic> topInviters;
	List<dynamic> users;


	MegagroupStats({required this.period, required this.members, required this.messages, required this.viewers, required this.posters, required this.growthGraph, required this.membersGraph, required this.newMembersBySourceGraph, required this.languagesGraph, required this.messagesGraph, required this.actionsGraph, required this.topHoursGraph, required this.weekdaysGraph, required this.topPosters, required this.topAdmins, required this.topInviters, required this.users});

	static MegagroupStats fromReader(BinaryReader reader) {
	var temp,len;var period = reader.tgReadObject();var members = reader.tgReadObject();var messages = reader.tgReadObject();var viewers = reader.tgReadObject();var posters = reader.tgReadObject();var growthGraph = reader.tgReadObject();var membersGraph = reader.tgReadObject();var newMembersBySourceGraph = reader.tgReadObject();var languagesGraph = reader.tgReadObject();var messagesGraph = reader.tgReadObject();var actionsGraph = reader.tgReadObject();var topHoursGraph = reader.tgReadObject();var weekdaysGraph = reader.tgReadObject();reader.readInt();
List<dynamic> topPosters = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		topPosters.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> topAdmins = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		topAdmins.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> topInviters = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		topInviters.add(reader.tgReadObject());
}reader.readInt();
List<dynamic> users = [];len = reader.readInt();
	for (var i=0;i<len;i++){
		users.add(reader.tgReadObject());
}		return new MegagroupStats(period : period, members : members, messages : messages, viewers : viewers, posters : posters, growthGraph : growthGraph, membersGraph : membersGraph, newMembersBySourceGraph : newMembersBySourceGraph, languagesGraph : languagesGraph, messagesGraph : messagesGraph, actionsGraph : actionsGraph, topHoursGraph : topHoursGraph, weekdaysGraph : weekdaysGraph, topPosters : topPosters, topAdmins : topAdmins, topInviters : topInviters, users : users);
	}
	List<int> getBytes(){return [readBufferFromBigInt(4018141462,4),(this.period.getBytes() as List<int>),(this.members.getBytes() as List<int>),(this.messages.getBytes() as List<int>),(this.viewers.getBytes() as List<int>),(this.posters.getBytes() as List<int>),(this.growthGraph.getBytes() as List<int>),(this.membersGraph.getBytes() as List<int>),(this.newMembersBySourceGraph.getBytes() as List<int>),(this.languagesGraph.getBytes() as List<int>),(this.messagesGraph.getBytes() as List<int>),(this.actionsGraph.getBytes() as List<int>),(this.topHoursGraph.getBytes() as List<int>),(this.weekdaysGraph.getBytes() as List<int>),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.topPosters!.length,4,little:true,signed:true),this.topPosters!.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.topAdmins!.length,4,little:true,signed:true),this.topAdmins!.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.topInviters!.length,4,little:true,signed:true),this.topInviters!.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),readBufferFromBigInt(this.users!.length,4,little:true,signed:true),this.users!.map((x)=>(x.getBytes() as List<int>)).expand((element) => element),].expand((element) => element).toList();}

}

class MessageStats {
    static const CONSTRUCTOR_ID = 2308567701;
    static const SUBCLASS_OF_ID = 2516886306;
    final classType = "constructor";
    final ID = 2308567701;
	var viewsGraph;


	MessageStats({required this.viewsGraph});

	static MessageStats fromReader(BinaryReader reader) {
	var temp,len;var viewsGraph = reader.tgReadObject();		return new MessageStats(viewsGraph : viewsGraph);
	}
	List<int> getBytes(){return [readBufferFromBigInt(2308567701,4),(this.viewsGraph.getBytes() as List<int>),].expand((element) => element).toList();}

}