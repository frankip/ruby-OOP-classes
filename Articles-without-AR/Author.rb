# has many articles
# require_relative 'Article'

class Author
    attr_reader :name
    def initialize(name)
        @name = name
    end

    def articles
        # array of article the user has written

        # get all article
        Article.all.select { |article | article.author == @name}
        # filter the articles 
        # articles where author matches the current author

    end

    def magazines
        # unique array of magazine author has contributed to

        # get all articles
        # filter the magazines where the author is current author
        articles.map { |article | article.magazine }.uniq

    end

    def add_article(magazine, title)
        # create new article and associate it with that author and magazine
        Article.new(self, magazine, title)
    end

    def topic_areas
        # unique array with categories of the magazine the author has contirbuted
        articles.collect {|article| article.magazine_instance.category}.uniq
    end
    
end

# author1 = Author.new('John')
# puts author1.name
