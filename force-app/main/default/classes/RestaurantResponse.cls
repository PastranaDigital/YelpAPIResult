public class RestaurantResponse {
    @AuraEnabled
    public Integer matching_results;
    @AuraEnabled
    public List<Restaurant> restaurants;
}
