# Mobile Developer Assessment for Roqqu

Thank you for the opportunity to complete this assessment for the Mobile Developer position at Roqqu. This project involves creating an interactive mobile user interface in Flutter that displays candlestick and orderbook data using the Binance WebSocket API. 

Due to access restrictions placed by Binance for users in Nigeria, I was unable to access the Binance WebSocket API and its documentation, which prevented full integration of real-time data. Nonetheless, I have implemented the UI as per the design specifications.

## Project Overview

This Flutter project is a mobile application UI that closely follows the design provided in the [Figma file](https://www.figma.com/file/jR33GYkNjebdZfLtbpXBxQ/Mobile-Design-Test?type=design&node-id=0%3A1&t=vcCqqyzHjpFQ1ZgU-1). The design includes the following key components:

- **Candlestick Chart**: Displays cryptocurrency price data over time (mocked in this implementation).
- **Order Book**: Lists current buy and sell orders (mocked in this implementation).

## Assessment Requirements

- **UI Implementation**: The UI design has been recreated in Flutter based on the Figma specifications.
- **WebSocket Integration**: The requirement was to consume the Binance WebSocket API for live candlestick and orderbook data. However, due to restrictions on accessing the Binance API from Nigeria, the data is currently mocked in this project.

## Video Demonstration

To showcase the UI and interaction, I've included a recording of the app in action. You can view it below:

[![Watch the video](https://img.youtube.com/vi/VIDEO_ID/0.jpg)](https://github.com/victorhez/exchange-task/blob/main/record.mp4)


> Note: The video demonstrates the UI implementation with mocked data since access to the Binance WebSocket API was restricted.

## Installation

To run this project locally:

1. Clone this repository:
    ```bash
    git clone https://github.com/your-username/roqqu-mobile-assessment.git
    ```
2. Navigate into the project directory:
    ```bash
    cd roqqu-mobile-assessment
    ```
3. Install dependencies:
    ```bash
    flutter pub get
    ```
4. Run the app:
    ```bash
    flutter run
    ```

## Future Work

If access to the Binance API becomes available, the WebSocket integration can be completed by:
1. Connecting to the Binance WebSocket endpoints for candlestick and orderbook data.
2. Parsing and displaying the real-time data in the UI.

## Limitations

As noted, the real-time Binance WebSocket API integration was not implemented due to access restrictions. The data displayed in the app is currently mocked to demonstrate the UI functionality.

## Conclusion

Thank you for reviewing this project. I look forward to the possibility of further discussing my work and how it aligns with Roqqu's needs.
