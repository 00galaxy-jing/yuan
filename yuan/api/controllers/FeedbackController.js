module.exports = {
	
	addText: function(req,res){
		var name = req.param('name');
		var tel = req.param('tel');
		var message = req.param('message');
		var pubtime = new Date();

		Feedback.create({fb_name:name,fb_tel:tel,fb_content:message,fb_pubtime:pubtime}).exec(function createFeedback(err,created){
			if(!err){
				console.log('OK for '+created.fb_name);
				return res.jsonp({
                    "state": 1
                }); 
			}
			else{
				console.log(err);
				return res.jsonp({
                    "state": -1
                }); 
			}
		})
	},

	view_userMessage: function(req,res){
		Companyprofiles.query('SELECT * From feedback ORDER BY fb_is_read,createdAt DESC',function(err,results){
			if(err)
				return res.serverError(err);
			return res.view('admin_usermess',{userm:results});
		})
	},

	changeRead:function(req,res){
		var id = req.param('mesid');
		var toread = req.param('toread');

		Feedback.update({fb_id:id},{fb_is_read:toread}).exec(function updateFeedback(err,updated){
			if(!err){
				console.log('OK for '+updated.fb_id);
				return res.jsonp({
                    "state": 1
                }); 
			}
			else{
				console.log(err);
				return res.jsonp({
                    "state": -1
                }); 
			}
		})
	},
}