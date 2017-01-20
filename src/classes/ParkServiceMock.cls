@isTest
global class ParkServiceMock implements WebServiceMock {
   global void doInvoke(
           Object stub,
           Object request,
           Map<String, Object> response,
           String endpoint,
           String soapAction,
           String requestName,
           String responseNS,
           String responseName,
           String responseType) {
        // start - specify the response you want to send
        String[] response_x_park = new string[]{'Anamudi Shola National Park', 'Anshi National Park','Bandipur National Park'};
        ParkService.byCountryResponse response_x;
        Map<String, ParkService.byCountryResponse> response_map_x = new Map<String, ParkService.byCountryResponse>();
        response_x.return_x = response_x_park;
        response_map_x.put('response_x', response_x);
        // end
        response.put('response_x', response_x_park); 
   }
}