module.exports = {
	tableName: 'team',
	autoCreatedAt:false,
	autoUpdatedAt:false,
	attributes:{
		team_id: {  
		    type: 'integer',  
		    primaryKey: true,
		    unique:true,
		    autoIncrement: true 
		  },  
		team_description: {  
		    type: 'text',  
		    required: true  
		  },  
		team_name: {  
		    type: 'string',
		    size: 100,
		    required: true  
		  },  
		team_img: {
			type: 'string',
			size: 255,
			required: true
		},
		team_is_deleted:{
			type: 'boolean',
			defaultsTo:false,
			required: true
		}
	}
};