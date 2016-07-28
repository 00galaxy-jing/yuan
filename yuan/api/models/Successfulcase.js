module.exports = {
	tableName: 'successfulcase',
	autoCreatedAt:false,
	autoUpdatedAt:false,
	attributes:{
		sc_id: {  
		    type: 'integer',  
		    primaryKey: true,
		    unique:true,
		    autoIncrement: true 
		  },  
		sc_company_name: {  
		    type: 'text',  
		    required: true  
		  },  
		sc_image: {  
		    type: 'String',  
		    size: 200,
		    required: true  
		  },  
		sc_is_deleted: {  
		    type: 'boolean', 
		    defaultsTo: 'false',
		    required:true  
		  }, 
	}
};