require 'pry'
def dictionary
  dictionary = {"hello" => "hi",
    "to"=>"2",
    "two"=>"2",
    "too"=>"2",
    "for"=>"4",
    "four"=>"4",
    "be"=>"b",
    "you"=>"u",
    "at"=>"@",
    "and"=>"&"}

end

def word_substituter(tweet)
shortened_tweet = ""
tweet.split.each do |word|
if dictionary.key?(word.downcase)
  shortened_tweet << "#{dictionary[word.downcase]} "
else
  shortened_tweet<< "#{word} "
end

end

shortened_tweet.chop
  end

def bulk_tweet_shortener(*tweets)

  tweets.each do |tweety|
    tweety.each do |tweet|
   #binding.pry
  puts word_substituter(tweet)
end
  end

end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
word_substituter(tweet)
else
  tweet
end
end


def shortened_tweet_truncator(tweet)
  if tweet.length > 140
tweet[0..134]<<"(...)"
else
  tweet
end

end

