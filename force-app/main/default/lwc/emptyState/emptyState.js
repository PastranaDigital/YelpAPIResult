import { LightningElement, api } from 'lwc';

export default class EmptyState extends LightningElement {
	@api message = "No Results Found";
}