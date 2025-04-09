class EmojiService
  def self.get_emoji_by_category(category)
    response = HTTParty.get("https://emojihub.yurace.pro/api/random/category/#{category}")
    
    if response.success?
      emoji = response.parsed_response
      Rails.logger.info("Emoji fetched: #{emoji}")
      emoji
    else
      Rails.logger.error("Failed to fetch emoji for category: #{category}")
      nil
    end
  end
end
