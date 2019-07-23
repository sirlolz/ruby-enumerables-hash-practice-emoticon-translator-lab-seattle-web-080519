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
  e = "Sorry, that emoticon was not found"
  load_library(file_path).each do |k, emote|
      emote.each do |v|
        if v[0] == emoticon
          return v[1]
        end
      end
    end
  e
end

def get_english_meaning(file, emoticon)
  e = "Sorry, that emoticon was not found"
  load_library(file).each do |k, emote|
    if k == "get_meaning"
      emote.each do |emotion|
        if emotion[0] == emoticon
         return emotion[1]
        end
      end
    end
  end
  e = "Sorry, that emoticon was not found"
end