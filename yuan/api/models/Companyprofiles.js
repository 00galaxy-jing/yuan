module.exports = {
	tableName: 'companyprofiles',
	autoCreatedAt:false,
	autoUpdatedAt:false,
	attributes:{
		cp_id: {  
		    type: 'integer',  
		    primaryKey: true,
		    unique:true,
		    autoIncrement: true 
		  },  
		cp_class:{
			type: 'integer',
			required: true
		},
		cp_profiles: {  
		    type: 'text',  
		    required: true  
		  },  
		cp_tel: {  
		    type: 'String',
		    size: 100,
		    required: true  
		  },  
		cp_email: {
			type: 'String',
			size: 150,
			required: true
		},
		cp_address: {
			type: 'String',
			size: 80,
			required: true
		},
		cp_is_deleted:{
			type: 'boolean',
			defaultsTo:false,
			required: true
		}
	}
};