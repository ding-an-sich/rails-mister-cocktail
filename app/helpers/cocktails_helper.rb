# Default helper for the CocktailsController
module CocktailsHelper
  # Check if there is a photo attached and return the path of default one if not
  def photo_check_path(cocktail)
    return cl_image_path(cocktail.photo.key) if cocktail.photo.attached?

    image_path('rabo-de-galo.jpg') # HTML helpers are included in this helper module by default
  end

  # Same as above, but uses tag helper
  def photo_check_tag(cocktail)
    return cl_image_tag(cocktail.photo.key, class: 'img-cock') if cocktail.photo.attached?

    image_tag('rabo-de-galo.jpg', class: 'img-cock')
  end
end
