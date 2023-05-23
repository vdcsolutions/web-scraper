###!!APP IS TEMPORARY DISABLED!!### 
###!!scraping-api microservice should be back up on 22.05.2023!!###


# Project Name
Web-Scraper

## Project Overview

Scraping District is a collection of microservices for web scraping and proxy management. It consists of three components:

1. GUI with Svelte - work in progress

2. Scraping API: A FastAPI-based API that handles web scraping requests and utilizes proxies for fetching target URLs.

3. Free Proxy API: Another FastAPI-based API that provides access to a list of free proxies and their details.

4. MongoDB: NoSQL database to save all scraped data and free proxies.

## Usage

Access the services using the following endpoints:

1. GUI : Work in progress

2. Free Proxy API: Access the Free Proxy API at http://143.42.27.95/docs. This API provides information about free proxies.
  - Endpoint: `/live-proxy-list` (GET): Retrieve the newest proxies. The list is updated every 5 minutes.
  - Endpoint: `/proxy-list` (GET): Retrieve the complete list of proxies from last 24 hours.

3. Scraping API: Access the Scraping API at http://172.104.142.79/docs. This API allows you to fetch target URLs and perform web scraping tasks using random proxies Free-Proxy-Api

  - Endpoint: `/scrape` (POST): Send a POST request to this endpoint with a JSON payload containing URLs to scrape and CSS/XPath selectors.
    - JSON Payload Schema:
      ```json
      {
        "urls": ["url1", "url2", ...],
        "selectors": [
          {
            "name": "label for scraped element",
            "type": "xpath" or "css",
            "selector": "your xpath or css selector string"
          },
                    ...
        ]
      }
      ```
    - Response: The API will respond with the scraped data for each URL and selector combination. The response format will vary based on your scraping logic and implementation.

          
   - Endpoint: `/fetch` (POST): Fetches the HTML content for a given URL and returns  html in a pretty format.
   - JSON schema

    ```json
    {
      "url": "https://example.com"
    }
   - Response : string with prettified html

4. MongoDB: Hosted at http://http://139.162.146.205. It does not currently provide any features for user.


Please note that the services are hosted online, and the provided IP addresses and URLs should be used to access the respective components.

Feel free to explore and utilize the services according to your needs.
