require "yaml"
require "pry"
def load_library(file_path)
  emotes = {"get_emoticon" => {},
    "get_meaning" => {}
  }
  i = 0
  emoticons = YAML.load_file(file_path)
  emoticons.each do |emote, meaning|
      emotes["get_meaning"][meaning[1]] = emote
      emotes["get_emoticon"][meaning[0]] = meaning[1]
  end
  emotes
end

def get_japanese_emoticon(file_path, emoticon)
  load_library(file_path)
  e = ""
  load_library(file_path).each do |k, emote|
      emote.each do |v|
        if v[0] == emoticon
           e = v[1]
        end
      end
    end
   if e.length > 2
     return e
   else
     #binding.pry
     puts "Sorry, that emoticon was not found"
   end
end

def get_english_meaning
  # code goes here
end