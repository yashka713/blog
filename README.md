[![Build Status](https://travis-ci.org/yashka713/blog.svg?branch=master)](https://travis-ci.org/yashka713/blog)

# Blog

You can use this app follow by link [heroku](https://liakh-blog.herokuapp.com/)
Staging:  [travis-ci](https://travis-ci.org/yashka713/blog/builds)

Ruby version: **2.4.1**

-----------------
Prerequisites
-------------
Required software: `ruby`, `pg`
 
Install
-----------------
```
git clone https://github.com/yashka713/blog.git && cd your_repo
```
```
bundle install
```
```
rails db:setup
```

Launch
------------
```
bundle exec rails s
```
Navigate to [http://localhost:3000](http://localhost:3000)


App works with ```PG DB```
-------------
Test:
```rubocop && rspec```

Created by Yaroslav Liakh