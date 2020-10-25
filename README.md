# Opinion's Social Media Website


![](https://img.shields.io/badge/Microverse-blueviolet)



> Ruby's on Rails Opinion's Social Media Website Project 

## Concept
>  As wikipedia define it: A Social networking sites allow users to share ideas, digital photos and videos, posts, and to inform others about online or real-world activities and events with people in their network. Depending on the social media platform, members may be able to contact any other member. In other cases, members can contact anyone they have a connection to, and subsequently anyone that contact has a connection to, and so on. The success of social networking services can be seen in their dominance in society today, with Facebook having a massive 2.13 billion active monthly users and an average of 1.4 billion daily active users in 2017.[5] LinkedIn, a career-oriented social-networking service, generally requires that a member personally know another member in real life before they contact them online. Some services require members to have a preexisting connection to contact other members.
## Usage

- This project intends to practice my skills building a full working MVP;
- Prepare data architecture documentation;
- Work with deployment to Heroku.<br>

## Live Demo

[Project live website](https://arcane-beyond-26196.herokuapp.com/users/sign_in)


### The idea start by this ERD

![](app/assets/images/ERD.png)
   
  
## 🛠 Getting Started

> To get a local copy up and running follow these simple example steps.

- Go to the main page of the repo.
- Copy this Code `git@github.com:sanadwj/Opinions.git`




### 📝 Setup

 - Open a terminal
 
 - Copy this code : 
        ```
        git clone git@github.com:sanadwj/Opinions.git
        ```
 - Copy this code to install the gems :
         ```
        bundle install
        ```
 - Copy this code to migrate th db :
 
        ```
        rails db:create && rails db:migrate && rails db:seed
               
        
- Visit `http://localhost:3000`

### 📝 What you will find:
   1. The user logs in to the app, Use: `sanad@example.com` as email, and `password` as password :)
   2. The user is presented with the homepage that includes:
       1. Left-side menu (includes only links to pages that are implemented).
       2. *Opinions* tab in the centre .
       3. Right-side section with *Who to follow.
   3. The *Opinions* section includes:
       1. Simple form for creating a opinion.
       2. List of all opinions (sorted by most recent) that display opinion text and author details.
   4. The *Who to follow* section includes:
       1. List of profiles that are not followed by the logged-in user (ordered by most recently added).
   5. When the user opens the profile page, they can see:
       1. Left-side menu (includes only links to pages that are implemented).
       2. Cover picture and *Opinions* tab in the centre.
       3. Right-side section with *Profile detailed info.*
   6. The *Profile detailed info* section includes:
       1. User photo.
       2. Button to follow a user.
       3. Stats: total number of opinions, number of followers and number of following users.
       4. List of people who follow this user.
   
### Automated Tests

- In root directory copy this into your terminal:
            ```
           rspec
            ```
- All the test should pass   

### Build With

- Ruby 2.7.0p0
- Ruby on Rails 5.2.4.4

### Deployed On:
- Heroku         

## 👤 Authors


👤 **Sanad Walid Abujbara**

- Github: [@sanadwj](https://github.com/sanadwj)
- Twitter: [@sandooog](https://twitter.com/sandooog)
- Linkedin: [sanad-abujbara](https://linkedin.com/in/sanad-abujbara)


## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

## 📝 License

This project is [MIT](lic.url) licensed.
