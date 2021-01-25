public with sharing class DateFormatter {
    public class FlowInput {
        @InvocableVariable(required=true)
        public Date dateToFormat;

        @InvocableVariable(required=true)
        public String formatStyle;
    }   
    
    public class FlowOutput {
        @InvocableVariable(required=true)
        public String formattedDate;
    }
    
    @InvocableMethod(label='Format a Date' description='Format any date according to the requested format.')
    public static List<FlowOutput> formatDate(List<FlowInput> inputs){
        List<FlowOutput> results = new List<FlowOutput>();
    
        for(FlowInput input : inputs){
            FlowOutput output = new FlowOutput();
            output.formattedDate = DateTime.newInstance(input.dateToFormat.year(), input.dateToFormat.month(), input.dateToFormat.day()).format(input.formatStyle);
            results.add(output);
        }
        return results;
	}
}
