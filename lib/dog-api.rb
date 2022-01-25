# frozen_string_literal: true

require 'http'

API_ENDPOINT = 'https://dog.ceo/api'

# Returns a hash of all available breeds.
def breeds_list
  response = HTTP.get("#{API_ENDPOINT}/breeds/list/all")
  hashed_response = response.parse['message'] if response.code == 200
  hashed_response or "Could not connect to the API, Status Code: #{response.code}"
end

# Returns a hash of all available sub-breeds of the given breed.
def sub_breeds_list(breed)
  response = HTTP.get("#{API_ENDPOINT}/breed/#{breed}/list")
  hashed_response = response.parse['message'] if response.code == 200
  hashed_response || "Could not connect to the API, Status Code: #{response.code}. Perhaps this breed does not have any sub-breeds?"
end

# Returns an array of all available images of the given breed.
def all_breed_images(breed)
  response = HTTP.get("#{API_ENDPOINT}/breed/#{breed}/images")
  hashed_response = response.parse['message'] if response.code == 200
  hashed_response || "Could not connect to the API, Status Code: #{response.code}"
end

# Returns an array of all available images of the given breed and sub-breed.
def all_sub_breed_images(breed, sub_breed)
  response = HTTP.get("#{API_ENDPOINT}/breed/#{breed}/#{sub_breed}/images")
  hashed_response = response.parse['message'] if response.code == 200
  hashed_response || "Could not connect to the API, Status Code: #{response.code} Perhaps this breed does not have any sub-breeds?"
end

# Returns an array of random breed images equivalent to the passed amount.
#
# Due to API limitations, it can only return an amount between 1 and 50.
def random_images(amount)
  if amount >= 1 && amount <= 50
    response = HTTP.get("#{API_ENDPOINT}/breeds/image/random/#{amount}")
    hashed_response = response.parse['message'] if response.code == 200
    hashed_response || "Could not connect to the API, Status Code: #{response.code}"
  else
    'Can only return between 1 and 50 images.'
  end
end

# Returns an array of breed images equivalent to the passed amount.
#
# Due to API limitations, it can only return an amount between 1 and 50.
def random_breed_images(breed, amount)
  if amount >= 1 && amount <= 50
    response = HTTP.get("#{API_ENDPOINT}/breed/#{breed}/images/random/#{amount}")
    hashed_response = response.parse['message'] if response.code == 200
    hashed_response || "Could not connect to the API, Status Code: #{response.code}"
  else
    'Can only return between 1 and 50 images.'
  end
end

# Returns an array of sub-breed images equivalent to the passed amount.
#
# Due to API limitations, it can only return an amount between 1 and 50.
def random_sub_breed_images(breed, sub_breed, amount)

  if amount >= 1 && amount <= 50
    response = HTTP.get("#{API_ENDPOINT}/breed/#{breed}/#{sub_breed}/images/random/#{amount}")
    hashed_response = response.parse['message'] if response.code == 200
    hashed_response || "Could not connect to the API, Status Code: #{response.code} Perhaps this breed does not have any sub-breeds?"
  else
    'Can only return between 1 and 50 images.'
  end
end
