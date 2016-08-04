module.exports = {
	view_companyImg: function(req,res){
		Jobpostings.query('SELECT * From companyprofiles WHERE cp_class=2 AND cp_is_deleted!=1',function(err,results){
			if(err)
				return res.serverError(err);
			return res.view('companyImg',{imgs:results});
		})
	}
}