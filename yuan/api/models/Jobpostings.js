module.exports = {
	tableName: 'jobpostings',
	autoCreatedAt:false,
	autoUpdatedAt:false,
	attributes:{
		jp_id: {  
		    type: 'integer',  
		    primaryKey: true,
		    unique:true,
		    autoIncrement: true 
		  },  
		jp_title: {  
		    type: 'String',  
		    size: 15,
		    required: true  
		  },  
		jp_requirement: {  
		    type: 'text',  
		    required: true  
		  },  
		jp_salary: {  
		    type: 'String', 
		    size: 20, 
		    required:true  
		  }, 
		jp_job_details:{
			type: 'text',
			required: true
		},
		jp_pubtime:{
			type: 'date',
			required:true
		},
		jp_endtime:{
			type: 'date',
			required:true
		},
		jp_is_deleted:{
			type: 'boolean',
			defaultsTo:false,
			required: true
		}
	}
};