### Installation

In order to run the provider you need to make sure `ruby 2.6.5` is installed, it's already set on `.ruby-version` file

Then run `bundle install`

If any errors occured, just make sure you sure `gem install bundler -v 1.17.2` just in case

Run `bundle exec rails db:create` and `bundle exec rails db:migrate`

Then server can no be normaly started using `bundle exec rails s -p 3001`

### Configs
You can use database.yml.exmaple as a template after setting up the .env variables that works with your system (.env.example also shows the required DB variables to set)

### Signing In
Navigate to `http://localhost:3001` to signin/signup

### Client .env variable
makes sure you source the .env file using `source .env`

export OAUTH_PROVIDER_URL=http://localhost:3000
export CLIENT_ID=p8ZiY9roOme9ko0dSLiFE1DVpb13aGlI6Ni9gXH7Gck
export CLIENT_SECRET=S8PtFjzXLX3CIhbTvohJ5WpHWVBfLEJou34LXcDwe9s
export OAUTH_REDIRECT_URI=http://localhost:3001/oauth/callback
export CLIENT_TWO_URL=http://localhost:3002 (If you have more clients)
