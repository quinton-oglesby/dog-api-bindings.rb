# frozen_string_literal: true

require 'http'

API_ENDPOINT = 'https://dog.ceo/api'

def return_breeds_list
  response = HTTP.get("#{API_ENDPOINT}/breeds/list/all")
  hashed_response = response.parse['message'] if response.code == 200
  hashed_response or "Could not connect to the API, Status Code: #{response.code}"
end

def return_sub_breeds_list(breed)
  response = HTTP.get("#{API_ENDPOINT}/breed/#{breed}/list")
  hashed_response = response.parse['message'] if response.code == 200
  hashed_response || "Could not connect to the API, Status Code: #{response.code}. Perhaps this breed does not have any sub-breeds?"
end

def return_breed_images(breed)
  response = HTTP.get("#{API_ENDPOINT}/breed/#{breed}/images")
  hashed_response = response.parse['message'] if response.code == 200
  hashed_response || "Could not connect to the API, Status Code: #{response.code}"
end

def return_sub_breed_images(breed, sub_breed)
  response = HTTP.get("#{API_ENDPOINT}/breed/#{breed}/#{sub_breed}/images")
  hashed_response = response.parse['message'] if response.code == 200
  hashed_response || "Could not connect to the API, Status Code: #{response.code} Perhaps this breed does not have any sub-breeds?"
end

def return_random_images(amount)
  if amount >= 1 && amount <= 50
    response = HTTP.get("#{API_ENDPOINT}/breeds/image/random/#{amount}")
    hashed_response = response.parse['message'] if response.code == 200
    hashed_response || "Could not connect to the API, Status Code: #{response.code}"
  else
    'Can only return between 1 and 50 images.'
  end
end

def return_random_breed_images(breed, amount)
  if amount >= 1 && amount <= 50
    response = HTTP.get("#{API_ENDPOINT}/breed/#{breed}/images/random/#{amount}")
    hashed_response = response.parse['message'] if response.code == 200
    hashed_response || "Could not connect to the API, Status Code: #{response.code}"
  else
    'Can only return between 1 and 50 images.'
  end
end

def return_random_sub_breed_images(breed, sub_breed, amount)
  if amount >= 1 && amount <= 50
    response = HTTP.get("#{API_ENDPOINT}/breed/#{breed}/#{sub_breed}/images/random/#{amount}")
    hashed_response = response.parse['message'] if response.code == 200
    hashed_response || "Could not connect to the API, Status Code: #{response.code} Perhaps this breed does not have any sub-breeds?"
  else
    'Can only return between 1 and 50 images.'
  end
end
