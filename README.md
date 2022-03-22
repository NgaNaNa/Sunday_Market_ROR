# T2A2 - Marketplace Project

#### R7 Identification of the problem you are trying to solve by building this particular marketplace app.

Locals supporting locals.
Making contributions to your local communities is always encouraged to help stimulate your local economy and sustain jobs. These days, it is somewhat difficult to figure out if large gatherings in real Sunday markets are deemed safe. What are the thoughts of individuals when it comes to large social gatherings? The problem is that the stalls are lacking potential buyers.
Therefore, the sellers, who, a lot of them are artists, are lacking support. To support artists, also in consequence, supports the practice of creative thinking and innovation. 
So, this app supports the local art business’ going by assisting buyers and sellers to reach their audience in a fast and convenient way, without paying stall fees.  The app is also the solution to keeping the ‘Covid bugs away’.
What’s great is, you don’t have to wait till Sunday to browse, buy, or sell.

#### R8 Why is it a problem that needs solving?

Let’s not let art die. As mentioned above, art brings out a creative mind, which stimulates innovation. Hopefully, someone will build an app to help support music and drama as well, but today, I will focus on the little artist that wants to make pretty little things or paint great big things.

#### R9 A link (URL) to your deployed app (i.e. website)

https://sunday-market-nga.herokuapp.com/

#### R10 A link to your GitHub repository (repo). - Ensure the repo is accessible by your Educators

https://github.com/NgaNaNa/Sunday_Market_ROR

#### R11 Description of your marketplace app (website), including:

- Purpose

This two-sided marketplace web application allows signed in users to post up art pieces that they would like to sell, and also be able to purchase listings from other user.
A registered and signed in user should be able to quickly create a listing without great difficulty, that should include basic details of the art piece, and also upload an image. They are able to accept credit card payments from the buyer (who is also a registed user like them).

- Functionality / features

The App has the feature that allows users to sign up and have their own account. The App then gives authorised users to perform the functions to create listings, buy listings via credit card, serach for local sellers to help buy arts locally.

All account holders will have a profile page, whether they have it filled out or not, that is optional. However, as a seller, having a profile page completed gives buyer get a better feel of who they are buying their goods from.

Stripe will be the payment gateway, if using credit card. This give users confidence in the application’s security management system. This feature should be optionally, allowing users to choose from a variety of payment systems, such as bank transfer, Pay ID, or cash.

- Sitemap

    ![Sunday Market Site Map](sunday_market/app/assets/images/sm-site-map.png)

- Screenshots of the website

    ![Create listing page](sunday_market/app/assets/images/scr-create-listing.png)

    ![Edit listing page](sunday_market/app/assets/images/scr-edit.png)

    ![Home page](sunday_market/app/assets/images/scr-home.png)

    ![View all listings page](sunday_market/app/assets/images/scr-listings.png)

    ![Sign in page](sunday_market/app/assets/images/scr-signin.png)

    ![Sign up page](sunday_market/app/assets/images/scr-signup.png)

- Target audience

The target audience are for anyone with a working smartphone, tablet, desktop devices with connection to the internet. Users don't need to have a credit card for purchasing, as they may want to contact the seller via e-mail to arrange alternative payments and exchange of the goods. As this app is also targetted towards audience with intention to purchase locally, hopefully travelling shouldn't too much of a hassle. Alternatively, the seller and buyer may arrange for items to be delivered if they are unable to get out. For example, stuck in isolation.

- Tech stack (e.g. html, css, deployment platform, etc)

    - 


#### R12 User stories for your app


#### R13 Wireframes for your app


#### R14 An ERD for your app


#### R15 Explain the different high-level components (abstractions) in your app


#### R16 Detail any third party services that your app will use


#### R17 Describe your projects models in terms of the relationships (active record associations) they have with each other


#### R18 Discuss the database relations to be implemented in your application


#### R19 Provide your database schema design


#### R20 Describe the way tasks are allocated and tracked in your project


#### R21 An outline of the problem you were trying to solve by building this particular marketplace app, and why it’s a problem that needs solving


#### R22 A walkthrough of your app

#### Backlog

As to date, where the project sits right now, I am missing a few features that I would like to implement into the next version of Sunday Mark (ie. Sunday Market 1.1)
They are the following:
- implement feature so that user may search for local listings, up to a certain range from where they are.
- implement the Terms and Condition in the form for Creating New Listings.
- Add more controls and error handling for when user enters unexpected data/or no data input received, etc.
- implement an Admin page for user's to see a history record of their listings and how they are tracking.
- implement a way of communication (ie. sending messages to the seller's e-mail address)
- implement the payment as mentioned above, using Stripe.
- Implement a function for users to cancel their own account.
