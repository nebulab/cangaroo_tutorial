Cangaroo Tutorial
=================

Cangaroo tutorial is an example application on how to setup
[Cangaroo](https://github.com/nebulab/cangaroo) to tweet every time a new
product is created into a [Solidus](http://solidus.io/) store.
It's a demo application made for the
[Cangaroo Tutorial](http://nebulab.it/blog/cangaroo-tutorial/) blogpost.

Setup
-----

1. Clone the repo:

        $ cd ~/Code
        $ git clone git@github.com:nebulab/cangaroo_tutorial.git
        $ cd cangaroo_tutorial

2. Installed the required gems:

        $ bundle install

3. Create the `.env` files with:

```env
twitter_consumer_key='your_twitter_consumer_key'
twitter_consumer_secret='your_twitter_consumer_secret'
twitter_access_token='your_twitter_access_token'
twitter_token_secret='your_twitter_token_secret'
```

4. Create the development database (with example data):

        $ rake db:setup && rake spree_sample:load

5. Start the server:

        $ rails server

6. Read the [article](http://nebulab.it/blog/cangaroo-tutorial/) and play with it.
