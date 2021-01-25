@isTest
private class DateFormatterTest {
    @isTest static void DateFormatterTest(){
        List <DateFormatter.FlowInput> listRequest = new  List <DateFormatter.FlowInput> ();
        DateFormatter.FlowInput sample = new DateFormatter.FlowInput();
        sample.dateToFormat = Date.newInstance(2020,01,02);
        sample.formatStyle = 'MMMM d, yyyy';
        listRequest.add(sample);
        
        //call the method
        List<DateFormatter.FlowOutput> output = DateFormatter.formatDate(listRequest);
        System.assertEquals(output[0].formattedDate,'January 2, 2020');
    }
}
