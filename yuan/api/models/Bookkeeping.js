module.exports = {
	tableName: 'bookkeeping',
	autoCreatedAt:true,
	autoUpdatedAt:false,
	attributes:{
		bk_id: {  
		    type: 'integer',  
		    primaryKey: true,
		    unique:true,
		    autoIncrement: true 
		  },  
		bk_class: {  
		    type: 'integer',  
		    enum: [1,2,3],
		    required: true  
		  },  
		bk_title_id:{
			type: 'String',
			size: 50
		},
		bk_title:{
			type: 'String',
			size: 100
		},
		bk_content: {  
		    type: 'text',
		    required: true  
		  },  
		bk_is_deleted:{
			type: 'boolean',
			defaultsTo:false,
			required: true
		}
	}
};