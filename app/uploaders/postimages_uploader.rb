class PostimagesUploader < CarrierWave::Uploader::Base
  # Include RMagick or MiniMagick support:
  #include CarrierWave::RMagick
  include CarrierWave::MiniMagick
  #include Magick
  #require 'rmagick'

  # Choose what kind of storage to use for this uploader:
  storage :file
  #storage :fog



  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  def default_url
  #   # For Rails 3.1+ asset pipeline compatibility:
  #   # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  #
     "/images/fallback/" + [version_name, "default.png"].compact.join('_')
   end

  # Process files as they are uploaded:
    #process :resize_to_fill => [800, 500]
  #
   #def scale(width, height)
  #   # do something
   #end

   # Process files as they are uploaded:

  
   version :large do
     process :resize_to_limit=> [600, nil]
     #process :watermark
 
   end


   #version :small do
     #process :resize_to_fit => [380, 270]
     #process :watermark
   #end

     def extension_white_list
    %w(jpg jpeg gif png)
  end


   #def watermark
  #manipulate! do |img|
    #logo = Magick::Image.read("#{Rails.root}/app/assets/images/fallback/upfricalogo.png").first
    #img = img.composite(logo, Magick::NorthWestGravity, 15, 0, Magick::OverCompositeOp)
  #end
#end



#def watermark
 #manipulate! do |source|
  #txt = Magick::Draw.new
  #txt.pointsize = 12
  #txt.gravity = Magick::SouthGravity
  #txt.stroke = "#000000"
  #title = Ad.last.name
  #source = source.resize_to_fill(400, 400).border(10, 10, "black")
  #source.annotate(txt, 0, 0, 0, 40, title)

#end
#end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  # def extension_white_list
  #   %w(jpg jpeg gif png)
  # end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

end
