module.exports = {
	tableName: 'successfulcase',
	attributes:{
		sc_id: {  
		    type: 'integer',  
		    required: true,  
		    unique:true,
		    primaryKey: true  
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
		    type: 'integer', 
		    size: 1, 
		    defaultsTo: '0',
		    required:true  
		  }, 
	}
};