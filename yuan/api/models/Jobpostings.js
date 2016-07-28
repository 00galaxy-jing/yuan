module.exports = {
	tableName: 'jobpostings',
	attributes:{
		jp_id: {  
		    type: 'integer',  
		    required: true,  
		    unique:true,
		    primaryKey: true  
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
		    size: 10, 
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
			type: 'integer',
			size: 1,
			defaultsTo:0,
			required: true
		}
	}
};