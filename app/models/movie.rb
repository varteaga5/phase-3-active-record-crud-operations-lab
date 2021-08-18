class Movie < ActiveRecord::Base
    
    # Create
    # A movie can be instantiated, given a title, and saved
    # A movie can be instantiated with a hash containing all of its attributes
    # A movie can be created in a block
    def self.create_with_title(title)
        Movie.create(title: title)
    end
    
    
    # Read
    # You can return the first item in the table
    def self.first_movie
        Movie.all.first
    end
    # You can return the last item in the table
    def self.last_movie
        Movie.all.last
    end
    # You can return the number of records in the table
    def self.movie_count
        Movie.count
    end
    def self.find_movie_with_id(id)
        Movie.find id
    end
    # You can return a movie from the table based on its attributes
    # You can use a where clause to select the appropriate movies and sort them by release date
    def self.find_movie_with_attributes(attr)
        Movie.find_by attr
    end
    def self.find_movies_after_2002
        Movie.where("release_date > 2002")
    end
# Update
# Can be found, updated, and saved
# Can be updated using the update method
def update_with_attributes(attr)
    self.update(attr)
end
# Can update all records at once
def self.update_all_titles(title)

    Movie.update(title:title)
end
# Destroy
# Can destroy a single item
# Can destroy all items at once
def self.delete_by_id(id)
    movie = Movie.find(id)
    movie.destroy
end

def self.delete_all_movies
    Movie.destroy_all
end
end