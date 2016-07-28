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
	}
}