require './environment'

Cloudinary.config do |config|    
    config.cloud_name = CLOUD_NAME   
    config.api_key = API_KEY   
    config.api_secret = API_SECRET 
    config.secure = true    
    config.cdn_subdomain = true  
 end