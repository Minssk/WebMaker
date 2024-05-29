var input = document.querySelector('input[name="tags"]');
var whitelist = [
		"공포"
		, "코미디"
		, "판타지"
		, "무협"
		, "현대"
		, "로맨스"
		, "로맨스 판타지"
	];

var tagify = new Tagify(input, {
  whitelist:whitelist,
  maxTags: 10,
  dropdown: {
    maxItems: 20,          
    classname: "tags-look", 
    enabled: 0,            
    closeOnSelect: false   
  }
})