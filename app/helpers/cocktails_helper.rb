# Default helper for the CocktailsController
module CocktailsHelper
  # Check if there is a photo attached and display the default one if not
  def photo_check(cocktail)
    return cl_image_path(cocktail.photo.key) if cocktail.photo.attached?

    image_path('rabo-de-galo.jpg') # HTML helpers are included in this helper module by default
  end
end
