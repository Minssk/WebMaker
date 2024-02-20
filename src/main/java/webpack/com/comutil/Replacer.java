package webpack.com.comutil;

public class Replacer {

	public static String replaceHTML(String text) {
		
		String result = text.replace("&amp;","&")
							.replace("&quot;","\"")
							.replace("&lt;","<")
							.replace("&gt;",">");
		
		return result;
	}
	
	public static String unscript(String data) { 
		
		if (data == null || data.trim().equals("")) {
            return "";
        }
        
        String ret = data;
        String ret_low="";
        
        ret = ret.replaceAll("<(S|s)(C|c)(R|r)(I|i)(P|p)(T|t)", "&lt;script");
        ret = ret.replaceAll("</(S|s)(C|c)(R|r)(I|i)(P|p)(T|t)", "&lt;/script");
        
        ret = ret.replaceAll("<(O|o)(B|b)(J|j)(E|e)(C|c)(T|t)", "&lt;object");
        ret = ret.replaceAll("</(O|o)(B|b)(J|j)(E|e)(C|c)(T|t)", "&lt;/object");
        
        ret = ret.replaceAll("<(A|a)(P|p)(P|p)(L|l)(E|e)(T|t)", "&lt;applet");
        ret = ret.replaceAll("</(A|a)(P|p)(P|p)(L|l)(E|e)(T|t)", "&lt;/applet");
        
        ret = ret.replaceAll("<(E|e)(M|m)(B|b)(E|e)(D|d)", "&lt;embed");
        ret = ret.replaceAll("</(E|e)(M|m)(B|b)(E|e)(D|d)", "&lt;embed");
        
        ret = ret.replaceAll("<(F|f)(O|o)(R|r)(M|m)", "&lt;form");
        ret = ret.replaceAll("</(F|f)(O|o)(R|r)(M|m)", "&lt;form");
        
        ret_low= ret.toLowerCase();
        
        if( ret_low.contains("javascript") || ret_low.contains("script")     || ret_low.contains("iframe") || 
                ret_low.contains("document")   || ret_low.contains("vbscript")   || ret_low.contains("applet") || 
                ret_low.contains("embed")      || ret_low.contains("object")     || ret_low.contains("frame") || 
                ret_low.contains("grameset")   || ret_low.contains("layer")      || ret_low.contains("bgsound") || 
                ret_low.contains("alert")      || ret_low.contains("onblur")     || ret_low.contains("onchange") || 
                ret_low.contains("onclick")    || ret_low.contains("ondblclick") || ret_low.contains("onerror") ||  
                ret_low.contains("onfocus")    || ret_low.contains("onload")     || ret_low.contains("onmouse") || 
                ret_low.contains("onscroll")   || ret_low.contains("onsubmit")   || ret_low.contains("onunload"))
        {
        	ret = ret_low;
        	ret = ret.replaceAll("javascript", "x-javascript");
        	ret = ret.replaceAll("script", "x-script");
        	ret = ret.replaceAll("iframe", "x-iframe");
        	ret = ret.replaceAll("document", "x-document");
        	ret = ret.replaceAll("vbscript", "x-vbscript");
        	ret = ret.replaceAll("applet", "x-applet");
        	ret = ret.replaceAll("embed", "x-embed");
        	ret = ret.replaceAll("object", "x-object");
        	ret = ret.replaceAll("frame", "x-frame");
        	ret = ret.replaceAll("grameset", "x-grameset");
        	ret = ret.replaceAll("layer", "x-layer");
        	ret = ret.replaceAll("bgsound", "x-bgsound");
        	ret = ret.replaceAll("alert", "x-alert");
        	ret = ret.replaceAll("onblur", "x-onblur");
        	ret = ret.replaceAll("onchange", "x-onchange");
        	ret = ret.replaceAll("onclick", "x-onclick");
        	ret = ret.replaceAll("ondblclick","x-ondblclick");
        	ret = ret.replaceAll("onerror", "x-onerror");
        	ret = ret.replaceAll("onfocus", "x-onfocus");
        	ret = ret.replaceAll("onload", "x-onload");
        	ret = ret.replaceAll("onmouse", "x-onmouse");
        	ret = ret.replaceAll("onscroll", "x-onscroll");
        	ret = ret.replaceAll("onsubmit", "x-onsubmit");
        	ret = ret.replaceAll("onunload", "x-onunload");
        	ret = ret.replaceAll("'", "&apos;");
        	ret = ret.replaceAll("\"", "&quot;");
        }
        
		return ret;
	}
	
	public static String getFieldNm(String data) {
		
		
		char[] camelFieldNm = data.toCharArray();
		String fieldName = "";
		for(char dbFieldNm : camelFieldNm) {
			if(dbFieldNm >= 97 && dbFieldNm <= 122) //소문자
				fieldName += dbFieldNm;
			else if(dbFieldNm >= 65 && dbFieldNm <= 90) //대문자
				fieldName += "_" + dbFieldNm; 
			else //숫자
				fieldName += dbFieldNm; 
		}
		return fieldName.toUpperCase();
	}
}
