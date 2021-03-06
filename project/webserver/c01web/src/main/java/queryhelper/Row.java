package queryhelper;

import java.util.HashMap;
import java.util.Map;

public class Row
{
	//private List<QueryParameterValue> fields;
	private Map<String, QueryParameterValue> fields;

	public Row()
	{
		this.fields = new HashMap<String, QueryParameterValue>();
	}
	
	public Map<String, QueryParameterValue> getFields()
	{
		return this.fields;
	}
	
	public void setField(String field, String value)
	{
		QueryParameterValue orig = this.fields.get(field);
		if (orig == null)
		{
			QueryParameterValue qbv = new QueryParameterValue(field, value);
			this.fields.put(field, qbv);
		}
		else
		{
			orig.setValue(value);
		}

	}
	
	//This returns null if the field is not found
	public String getValue(String field)
	{
		String result = null;
		if(this.fields.containsKey(field))
		{
			result = this.fields.get(field).getValue();
		}
		
		return result;
	}
	
	//Will merge this row and the one supplied, row overwrites any values in this, if the value exists in row
	public void merge(Row row)
	{
		Map<String, QueryParameterValue> newFields = row.getFields();
		for (String field : newFields.keySet())
		{
			QueryParameterValue qbv = newFields.get(field);
			if (qbv.getValue() != "") //if the field from new row has some value, then want to overwrite
			{
				this.setField(field, qbv.getValue());
			}
		}
	}
	
	@Override
	public String toString()
	{
		String result = "";
		
		result += "{";

		for (String field : this.fields.keySet())
		{
			QueryParameterValue qbv = this.fields.get(field);
			result += qbv.toString() + ",";

		}
		result = result.substring(0, result.length() - 1);
		result += "}";
		
		return result;
	}
}
