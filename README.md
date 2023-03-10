# Member's Only

A Rails website that only allows signed in members to see who authored a post. The app uses the `devise` gem, validations, and relations between models. A user can sign in, sign out, and delete his/her account. Posts can only be deleted by deleting the user's account.


Navigate to the directory and install dependencies:
```
bundle install
```

Then yarn dependencies:
```
yarn install
```

Run migrations:
```
rails db:migrate
```
and then run the service:
```
rails server
```
