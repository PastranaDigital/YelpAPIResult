public class RestaurantService {
    @AuraEnabled(cacheable=true)
    public static List<Restaurant> getRestaurantsByZipCode(String accId) {
        String zipCode = AccountService.getBillingPostalCode(accId);
        String responseString = ApiService.getRestaurantData(zipCode);
        
        RestaurantResponse response;
        try {
            response = (RestaurantResponse) System.JSON.deserialize(responseString, RestaurantResponse.class);
            System.debug('Parsed Response: ' + response);
        } catch (Exception e) {
            System.debug('Error during deserialization: ' + e.getMessage());
            return new List<Restaurant>();
        }
        
        for(Restaurant r : response.restaurants) {
            System.debug('Restaurant ID: ' + r.id + ' Latitude: ' + r.latitude + ' Longitude: ' + r.longitude);
        }
        
        return response.restaurants;
    }
}
