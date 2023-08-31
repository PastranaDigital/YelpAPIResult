public class ApiService {
    private static final String BASE_URL = 'https://restaurants-near-me-usa.p.rapidapi.com/restaurants/location/zipcode/';
    
    public static String getRestaurantData(String zipCode) {
        String url = BASE_URL + zipCode + '/0';

        HttpRequest req = new HttpRequest();
        req.setEndpoint(url);
        req.setMethod('GET');
        req.setHeader('X-RapidAPI-Host', 'restaurants-near-me-usa.p.rapidapi.com');
        req.setHeader('X-RapidAPI-Key', getApiKey()); 

        Http http = new Http();
        String responseString;
        try {
            HttpResponse res = http.send(req);
            responseString = res.getBody();
            System.debug('API response: ' + responseString);
        } catch (Exception e) {
            System.debug('Error in API call: ' + e.getMessage());
            return null;
        }
        
        return responseString;
    }

    public static String getApiKey() {
        api_key__mdt apiKeyRecord = [SELECT Key__c FROM api_key__mdt LIMIT 1];
        return (apiKeyRecord != null) ? apiKeyRecord.Key__c : null;
    }
}
