# YelpAPIResult
<b>Brief Description:</b> a Salesforce Lightning Web Component to search Yelp based on the current Account record's address


<br>
<h3>Details</h3>
<p>
  While researching API callouts using Apex I came across this YouTube video by the Salesforce Developers channel "Introduction to Callouts in Apex" and they did a demo of a LWC that connected to Yelp. It used the current record's address as the location when searching. This was so interesting and inspiring that I set out to build it myself. I also challenged myself to not use Apex and handle all the functionality in the JavaScript code.
  
  If you plan to add to your org, be sure to add the CSP Trusted Site settings. Check out the screenshot for details.
</p>


<br>
<h3>Process</h3>
<ul>
  <li>Create the css and visualization of individual item LWC</li>
  <li>Make api static data show as an array in the console</li>
  <li>Iterate through an already existing list of search results on LWC</li>
  <li>Move the visualization of iteration to separate component</li>
  <li>Search term is added to url and dynamic results shown</li>
  <li>Address is pulled from current page (may need to be a separate LWC since oauth error in org)</li>
  <li>Order results by distance & display that sorting as text</li>
  <li>Fix oauth error in org component (CSP setting in org)</li>
  <li>Clicking on result goes to the URL in a new tab</li>
</ul>



<br>
<h3>Resources</h3>
<p>
  <b>Introduction to Callouts in Apex:</b> https://youtu.be/LSnfXHlSJEI?t=683
  <br>
  <b>Lightning Web Component Crash Course:</b> https://www.youtube.com/watch?v=bLyAsIeDZtw
  <br>
  <b>Build a dashboard with Realtime API in Salesforce:</b> https://www.youtube.com/watch?v=6MuvWRJCsK0
  <br>
  <b>Sorting data:</b> https://stackoverflow.com/questions/8175093/simple-function-to-sort-an-array-of-objects
  <br>
  <b>Salesforce CSP Trusted Site Settings:</b> https://developer.salesforce.com/blogs/2018/10/introducing-new-content-security-policy-options-for-lightning-communities.html
  <br>
  <b>Salesforce Lightning Component Reference:</b> https://developer.salesforce.com/docs/component-library/overview/components
</p>  
