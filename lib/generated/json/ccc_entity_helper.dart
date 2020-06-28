import 'package:flutterapp/model/ccc_entity.dart';

cccEntityFromJson(CccEntity data, Map<String, dynamic> json) {
	if (json['aid'] != null) {
		data.aid = json['aid']?.toInt();
	}
	if (json['uid'] != null) {
		data.uid = json['uid']?.toInt();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['content_resume'] != null) {
		data.contentResume = json['content_resume'];
	}
	if (json['content'] != null) {
		data.content = json['content']?.toString();
	}
	if (json['tag'] != null) {
		data.tag = json['tag']?.toString();
	}
	if (json['create_time'] != null) {
		data.createTime = json['create_time']?.toString();
	}
	if (json['last_modify_time'] != null) {
		data.lastModifyTime = json['last_modify_time']?.toString();
	}
	if (json['state'] != null) {
		data.state = json['state']?.toString();
	}
	if (json['comment_count'] != null) {
		data.commentCount = json['comment_count'];
	}
	return data;
}

Map<String, dynamic> cccEntityToJson(CccEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['aid'] = entity.aid;
	data['uid'] = entity.uid;
	data['title'] = entity.title;
	data['content_resume'] = entity.contentResume;
	data['content'] = entity.content;
	data['tag'] = entity.tag;
	data['create_time'] = entity.createTime;
	data['last_modify_time'] = entity.lastModifyTime;
	data['state'] = entity.state;
	data['comment_count'] = entity.commentCount;
	return data;
}