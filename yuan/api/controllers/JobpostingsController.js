module.exports = {
	view_jobpostings: function(req,res){
		Jobpostings.query('SELECT * From jobpostings ORDER BY jp_pubtime',function(err,results){
			if(err)
				return res.serverError(err);
			return res.view('recruit',{jobs:results});
		})
	}
	
}