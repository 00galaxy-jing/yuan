module.exports = {
	tableName: 'changeorcancellation',
	autoCreatedAt:true,
	autoUpdatedAt:false,
	attributes:{
		cc_id: {  
		    type: 'integer',  
		    primaryKey: true,
		    unique:true,
		    autoIncrement: true 
		  },  
		cc_class: {  
		    type: 'integer',  
		    enum: [1,2,3],
		    required: true  
		  },  
		cc_content: {  
		    type: 'text',
		    required: true  
		  },  
		cc_is_deleted:{
			type: 'boolean',
			defaultsTo:false,
			required: true
		}
	}
};