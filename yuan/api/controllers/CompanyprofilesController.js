module.exports = {
	view_companyImg: function(req,res){
		Companyprofiles.query('SELECT * From companyprofiles WHERE cp_class=2 AND cp_is_deleted!=1',function(err,results){
			if(err)
				return res.serverError(err);
			return res.view('companyImg',{imgs:results});
		})
	},

	view_contactInformation: function(req,res){
		Companyprofiles.query('SELECT * From companyprofiles WHERE cp_class=3 AND cp_is_deleted!=1',function(err,results){
			if(err)
				return res.serverError(err);
			return res.view('contactInformation',{infos:results});
		})
	},

	view_admin_profile: function(req,res){
		Companyprofiles.query('SELECT * From companyprofiles ORDER BY cp_class',function(err,results){
			if(err)
				return res.serverError(err);
			return res.view('admin_profile',{comInfos:results});
		})
	},
}