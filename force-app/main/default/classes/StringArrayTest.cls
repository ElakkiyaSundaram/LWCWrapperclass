public class StringArrayTest {
    public static List<String> generateStringArray(Integer n){
        List<String> strarr = new List<String>();
        for(Integer i=0;i<n;i++) {
            string t= 'Test ' + i;
            //String test='\''+ t + '\'';             
            strarr.add(t);
            system.debug(strarr[i]);
        }
        return strarr;
    }
	
}