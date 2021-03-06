# MPESA Ledger

This is an MPESA Ledger project that receives and listens to SMS from MPESA to create an analytical view of your MPESA transactions, that is, deposits and withdrawals all **stored in an SQLite Database in your phone, not anywhere else.** Other features include categorizing your transaction, calculating MPESA transactions fees and a year monthly summary

> The latest apk can be downloaded here: => [APK File](https://github.com/jama5262/Mpesa-Ledger/tree/master/apk)

Set Up|
------------ |
<img src="https://github.com/jama5262/Mpesa-Ledger-Flutter/blob/master/gif/image1.gif" alt="alt text" height="500px"> | 

## Limitations
As of now the project only supports Android phones

# Table of Contents
- [Built With](#built-with)
- [Demos](#demos)
- [Contributing](#contributing)
- [Support](#support)
- [License](#license)

## Built-With

- BLoC Pattern
- [Jiffy](https://github.com/jama5262/jiffy)
- [SQFlite](https://github.com/tekartik/sqflite)
- [Firebase Auth](https://pub.dev/packages/firebase_auth)
- [Charts Flutter](https://google.github.io/charts/flutter/gallery)

## Demos

### Home Page

Below is the home screen, a selected transaction for further viewing and a search functionality

Home Page | Transaction Page | Search Page
------------ | ------------- | -------------
<img src="https://github.com/jama5262/Mpesa-Ledger-Flutter/blob/master/gif/image2.gif" alt="alt text" height="500px"> | <img src="https://github.com/jama5262/Mpesa-Ledger-Flutter/blob/master/gif/image3.gif" alt="alt text" height="500px"> | <img src="https://github.com/jama5262/Mpesa-Ledger-Flutter/blob/master/gif/image4.gif" height="500px">

### Category Page

The following is the category page where you can see the default categories and a pie chart showing number of transactions for each category. You can also create our own category by simply adding a keyword

Example below shows creating a category by the keywords (Jama and Diana) which later returns all transactions that have the keywords(Jama and Diana) within their text messages. Deleting a category is fairly easy by swipping left or right and confirming the deletion

Category Page | Create Category
------------ | -------------
<img src="https://github.com/jama5262/Mpesa-Ledger-Flutter/blob/master/gif/image5.gif" alt="alt text" height="500px"> | <img src="https://github.com/jama5262/Mpesa-Ledger-Flutter/blob/master/gif/image6.gif" alt="alt text" height="500px">

### Summary Page

The summary page shows the overall total of your transactions and a year monthly view using a bar chart

Summary Page|
------------ |
<img src="https://github.com/jama5262/Mpesa-Ledger-Flutter/blob/master/gif/image7.gif" alt="alt text" height="500px"> | 
### Calculator

You can use the calculator page to calculate the transaction charges

Calculator Page|
------------ |
<img src="https://github.com/jama5262/Mpesa-Ledger-Flutter/blob/master/gif/image8.gif" alt="alt text" height="500px"> | 

### Setting Page

The setting page allows you to change your theme and also delete all of your Mpesa SMS messages from the Mpesa Ledger App

Change Theme | Delete All Data
------------ | -------------
<img src="https://github.com/jama5262/Mpesa-Ledger-Flutter/blob/master/gif/image9.gif" alt="alt text" height="500px"> | <img src="https://github.com/jama5262/Mpesa-Ledger-Flutter/blob/master/gif/image10.gif" alt="alt text" height="500px">

## Contributing

To contribute, follow the following easy steps

### Step 1
 - Fork this repo!

### Step 2

- Add new features or fix bugs

### Step 3

- Create a new pull request

### Support

Reach out to me at one of the following places!

- Email at jama3137@gmail.com
- Twitter [timedjama5262](https://twitter.com/timedjama5262)

<a href="https://www.buymeacoffee.com/jama" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/yellow_img.png" alt="Buy Me A Coffee" style="height: auto !important;width: auto !important;" ></a>


### License

```
MIT License

Copyright (c) 2020 Jama Mohamed

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
