module.exports = {
	tableName: 'companyregistration',
	autoCreatedAt:true,
	autoUpdatedAt:false,
	attributes:{
		cr_id: {  
		    type: 'integer',  
		    primaryKey: true,
		    unique:true,
		    autoIncrement: true 
		  },  
		cr_class: {  
		    type: 'integer',  
		    enum: [1,2,3],
		    required: true  
		  },  
		cr_content: {  
		    type: 'text',
		    required: true  
		  },  
		cr_is_deleted:{
			type: 'boolean',
			defaultsTo:false,
			required: true
		}
	}
};