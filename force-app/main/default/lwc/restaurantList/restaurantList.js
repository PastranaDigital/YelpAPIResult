import { LightningElement, api, track, wire } from 'lwc';
import getRestaurantsByZipCode from '@salesforce/apex/RestaurantService.getRestaurantsByZipCode';

export default class RestaurantList extends LightningElement {
    @api recordId;
    @track restaurants = [];
    @track displayedRestaurants = [];
    @track mapMarkers = [];

    
    @wire(getRestaurantsByZipCode, { accId: '$recordId' })
    wiredRestaurants({ error, data }) {
        if (data) {
            console.log('API call result:', data); 
            data.forEach(restaurant => {
                console.log('Restaurant details:', restaurant);
            });

            this.restaurants = [...data];
            this.displayedRestaurants = [...this.restaurants.slice(0, 10)];

            this.mapMarkers = this.restaurants.map(restaurant => {
                console.log('Latitude:', restaurant['latitude'], 'Longitude:', restaurant.longitude);
                
                return {
                    location: {
                        Latitude: restaurant.latitude,
                        Longitude: restaurant.longitude
                    },
                    title: restaurant.restaurantName,
                    description: restaurant.address
                };
            });
        } else if (error) {
            console.error('Error loading restaurant data', error);
        }
    }
}
