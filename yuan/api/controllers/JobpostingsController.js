module.exports = {
	view_jobpostings: function(req,res){
		Jobpostings.query('SELECT * From jobpostings Where jp_is_deleted!=1 ORDER BY jp_pubtime DESC',function(err,results){
			if(err)
				return res.serverError(err);
			return res.view('recruit',{jobs:results});
		})
	},

	view_admin_recruit: function(req,res){
		Jobpostings.query('SELECT * From jobpostings ORDER BY jp_is_deleted,jp_pubtime DESC',function(err,results){
			if(err)
				return res.serverError(err);
			return res.view('admin_recruit',{adminjobs:results});
		})
	},
	
	changeDelete:function(req,res){
		var id = req.param("jobid");
		var tonot = req.param("tonot");

		Jobpostings.update({jp_id:id},{jp_is_deleted:tonot}).exec(function updateFeedback(err,updated){
			if(!err){
				console.log('OK for '+updated.jp_id);
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

	admin_addRecruit: function(req,res){
		var name = req.param('jobname');
		var require = req.param('jobreq');
		var salary = req.param('jobsalary');
		var details = req.param('jobinfo');
		var endtime = req.param('jobendtime');
		var pubtime = new Date();

		Jobpostings.create({jp_title:name,jp_requirement:require,jp_salary:salary,jp_job_details:details,jp_pubtime:pubtime,jp_endtime:endtime}).exec(function createFeedback(err,created){
			if(!err){
				console.log('OK for '+created.jp_title);
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