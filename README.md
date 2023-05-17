# Project Name

Scraping District

## Project Overview

Scraping District is a collection of microservices for web scraping and proxy management. It consists of three components:

1. GUI with React.js: A user interface built with React.js for interacting with the scraping API and performing web scraping tasks. Access the GUI at http://143.42.57.97/.

2. Scraping API: A FastAPI-based API that handles web scraping requests and utilizes proxies for fetching target URLs. Access the Scraping API at http://172.104.142.79/.

3. Free Proxy API: Another FastAPI-based API that provides access to a list of free proxies and their details. Access the Free Proxy API at http://194.195.242.23/.

## Usage

Access the services using the following endpoints:

1. GUI with React.js: Access the GUI at http://143.42.57.97/. It provides a user-friendly interface for interacting with the Scraping API and performing web scraping tasks. Please refer to the GUI documentation for usage instructions.

2. Scraping API: Access the Scraping API at http://172.104.142.79/. This API allows you to fetch target URLs and perform web scraping tasks using random proxies.
  - Endpoint: `/fetch` (POST): Send a POST request to this endpoint with a JSON payload containing target URLs to fetch them using random proxies.
    - JSON Payload Schema:
      ```json
      {
        "target_urls": ["url1", "url2", ...]
      }
      ```
    - Response: The API will respond with a list of dictionaries containing the URL and its corresponding HTML response for each target URL.

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


3. Free Proxy API: Access the Free Proxy API at http://194.195.242.23/. This API provides information about free proxies.
  - Endpoint: `/live-proxy-list` (GET): Retrieve the newest proxies. The list is updated every 5 minutes.
  - Endpoint: `/proxy-list` (GET): Retrieve the complete list of proxies from last 24 hours.

Please note that the services are hosted online, and the provided IP addresses and URLs should be used to access the respective components.

Feel free to explore and utilize the services according to your needs.
