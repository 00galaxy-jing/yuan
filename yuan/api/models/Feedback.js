module.exports = {
	tableName: 'feedback',
	autoCreatedAt:true,
	autoUpdatedAt:false,
	attributes:{
		fb_id: {  
		    type: 'integer',  
		    primaryKey: true,
		    unique:true,
		    autoIncrement: true 
		  },  
		fb_name: {  
		    type: 'String',  
		    size: 20,
		    required: true  
		  },  
		fb_tel: {  
		    type: 'String',
		    size: 50,  
		    required: true  
		  },  
		fb_content: {  
		    type: 'text', 
		    required:true  
		  }, 
		fb_is_read:{
			type: 'boolean',
			defaultsTo: false,
			required: true
		},
		fb_is_deleted:{
			type: 'boolean',
			defaultsTo:false,
			required: true
		}
	}
};