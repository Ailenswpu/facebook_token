# FacebookToken

FacebookToken is used for developer to get facebook access_token without browser the facebook web site

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'facebook_token'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install facebook_token

## Usage
FacebookToken is worked with the [Koala](https://github.com/arsduo/koala) gem

    opt = {email: "your facebook email", password: "your facebook password", app_id: "your facebook app_id" }  
    FacebookToken::Dev.fetch(opt)

the out put of FacebookToken::Dev.fetch(opt) is the token for developer like: 
```ruby
"CAALHltciOQEBAJA2UlIPDX0a7lOff01ueEcGekt0kdpOEiSzbdtKwkR8kyDFqkutbKHQ0tP7Ga647OSysDsmafHy1euhnEG0P2LgmRpWZBx9fhMt9YMi4csJAjooUzzLCXQTsTB8LROlDVAcW4ZASNY3PiRHadMGyxbGwuhp6WRWY6g6fLWWVnQpJZBoEVb0DtekZAJFjjOkndLpg2q4"
```
you can get your facebook app_id from https://developers.facebook.com/    

## Contributing

1. Fork it ( https://github.com/Ailenswpu/facebook_token/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
