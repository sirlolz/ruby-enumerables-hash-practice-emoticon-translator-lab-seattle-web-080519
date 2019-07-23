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
  load_library(file_path).each do |k, emote|
      emote.each do |v|
        binding.pry
      end
end

def get_english_meaning
  # code goes here
end