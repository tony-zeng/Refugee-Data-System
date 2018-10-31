var form;

function findForm()
{
	form = document.getElementById("form");
}

function generateField(field)
{
	if (isString(field))
	{
		return generateFieldString(field);
	}
	else if (isBoolean(field))
	{
		return generateFieldBoolean(field);
	}
	else if (isSelect(field))
	{
		return generateFieldSelect(field);
	}
	else
	{
		console.log("no type found for: " + field);
	}
	return null;
}

//Each type has to be able to generate an element for itself
//returns textbox element
function generateFieldString(field)
{
	//creates title for element
	var title = document.createElement("span");
	title.innerHTML = getName(field);
	
	var textbox = document.createElement("textarea");
	textbox.id = field;
	textbox.rows = 1;
	textbox.cols = 35;
	
	form.appendChild(title);
	form.appendChild(textbox);
	form.appendChild(document.createElement("br"));
	
	return textbox;
}

//returns arary of size 2, 0 element is false, 1 is true
function generateFieldBoolean(field)
{
	var title = document.createElement("span");
	title.innerHTML = getName(field);
	
	var div = document.createElement("div");
	div.id = field;
	
	var input1title = document.createElement("span");
	input1title.innerHTML = " No";
	
	var input1 = document.createElement("input");
	input1.type = "radio";
	input1.name = field;
	input1.value = "False";
	
	input1.checked = true; //default value
	
	var input2title = document.createElement("span");
	input2title.innerHTML = " Yes";
	
	var input2 = document.createElement("input");
	input2.type = "radio";
	input2.name = field;
	input2.value = "True";
	
	div.appendChild(input1);
	div.appendChild(input1title);
	div.appendChild(document.createElement("br"));
	div.appendChild(input2);
	div.appendChild(input2title);
	div.appendChild(document.createElement("br"));
	
	form.appendChild(title);
	form.appendChild(div);
	
	return [input1, input2];
}

//for now just creates textbox, and returns it
function generateFieldSelect(field)
{
	var title = document.createElement("span");
	title.innerHTML = getName(field);
	
	var select = document.createElement("select");
	select.id = field;
	
	var options = getFieldList(field);
	var optionElements = [];
	for (a = 0; a < options.length; a++)
	{
		var option = options[a];
		var element = document.createElement("option");
		element.value = option;
		element.innerHTML = option;
		select.appendChild(element);
		optionElements.push(element);
	} //by default the 0th element is selected
	
	form.appendChild(title);
	form.appendChild(select);
	form.appendChild(document.createElement("br"));
	
	return optionElements;
}