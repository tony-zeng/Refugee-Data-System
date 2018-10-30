package queryhelper;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class FieldSpec
{
	@SuppressWarnings("serial")
	private static final Map<String, String> FIELD_TYPES = Collections.unmodifiableMap(
		    new HashMap<String, String>() {
			{
				//Each new field must have a type associated to it
		        put(UNIQUE_IDENTIFIER, FIELDTYPE_STRING);
		        put(UNIQUE_IDENTIFIER_VALUE, FIELDTYPE_STRING);
		    }});
	
	
	
	//Each new type goes here
	public static final String FIELDTYPE_STRING = "string";
	public static final String FIELDTYPE_BOOLEAN = "boolean";
	
	
	
	//Each new table has it's referenced name go here
	public static final String TABLE_CLIENT_PROFILE = "client_profile";
	
	
	
	//Each new field has it's referenced name go here
	public static final String UNIQUE_IDENTIFIER = "unique_identifier";
	public static final String UNIQUE_IDENTIFIER_VALUE = "unique_identifier_value";
	
	
	
	public static final boolean isType(String field, String type)
	{
		return (FIELD_TYPES.get(field) == type);
	}
}
