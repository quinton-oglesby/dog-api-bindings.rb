# dog_api_bindings.rb

## An easy to use wrapper for the dog.ceo API.

### Installation
You can install this by running: 

```ruby 
gem install dog_api_bindings
```

Inside of your Ruby program do:
```ruby
require "dog_api_bindings"
```

### Methods
**breed_list**

Returns a hash of all available breeds. Can be used as follows:

```ruby
breeds = breeds_list
```

**sub_breeds_list(***breed***)**

Returns a hash of all the available sub-breeds of the given breed. Can be used as follows: 
```ruby
hound_sub_breeds = sub_breeds_list('hound')
```

**all_breed_images(***breed***)**

Returns an array of all available images of the given breed.
Can be used as follows:
```ruby
hound_images = all_breed_images('hound')
```

**all_sub_breed_images(***breed, subbread***)**

Returns an array of all available images of the given breed and sub-breed. Can be used as follows:
```ruby
afhan_hound_images = all_sub_breed_images('hound', 'afghan')
```

**random_images(***amount***)**

Returns an array of random breed images equivalent to the passed amount.
Due to API limitations, it can only return an amount between 1 and 50. 
Can be used as follows:
```ruby
dog_images = random_images(4)
```

**random_breed_images(***breed, amount***)**

Returns an array of breed images equivalent to the passed amount.
Due to API limitations, it can only return an amount between 1 and 50.
Can be used as follows: 
```ruby
hound_images = random_breed_images('hound' , 4)
```

**random_sub_breed_images(***breed, sub_breed, amount***)**

Returns an array of sub-breed images equivalent to the passed amount.
Due to API limitations, it can only return an amount between 1 and 50.
Can be used as follows: 
```ruby
afghan_hound_images = random_sub_breed_images('hound', 'afghan', 4)
```
