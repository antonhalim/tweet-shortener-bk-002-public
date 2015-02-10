require 'pry'

def word_substituter(string)
    newarray = []
    tweet_array = string.split(" ")
    substitute = {
        "hello" => "hi",
        "to" => "2",
        "two" => "2",
        "too" => "2",
        "for" => "4",
        "four" => "4",
        "be" => "b",
        "you" => "u",
        "at" => "@",
        "and" => "&"
    }
    tweet_array.collect do |word|
      if substitute.keys.include?(word.downcase)
        newarray << substitute[word.downcase]
      else
        newarray << word
      end
    end
    newarray.join(" ")
end


def bulk_tweet_shortener(tweets)
    tweets.each do |tweet|
      puts word_substituter(tweet)
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
    substitute = word_substituter(tweet)
    if substitute.length >140
      substitute[0...140]
    else
      substitute
    end
      # binding.pry
    end










