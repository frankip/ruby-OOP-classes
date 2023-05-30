require_relative 'Author'
require_relative 'Magazine'

class Article
    attr_reader :title

    @@all_articles = []
    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all_articles << self
    end

    def self.all
        @@all_articles
    end

    def author
        @author.name
    end

    def magazine
        @magazine.name
    end
    
    def magazine_instance
        @magazine
    end

    # def author
    #     # returns author of the given article
    # end

    # def magazine
    #     # returns the magazine for that article
    # end

end


# author instance
# magazine instance
author1 = Author.new('John')
author2 = Author.new('Jane')
# puts author1.name

magazine1= Magazine.new('vogue', 'entertainment')
magazine2= Magazine.new('nation', 'news')
magazine3 = Magazine.new('standard', 'politics')

# puts magazine1.name
# puts magazine2.category 

# puts Magazine.all

article1 = Article.new(author1, magazine1, "ruby classes")
article2 = Article.new(author2, magazine2, "ruby oop")
article3 = Article.new(author1, magazine2, "relationship model")
article4 = Article.new(author1, magazine2, "active records")
# puts article1.magazine

all_articles = Article.all
# pp all_articles[0].author



# pp author1.articles #return []
# pp author1.magazines
# pp author1.topic_areas

# pp magazine2.contributors
# art =  all_articles.map do |article | 
#     # article.name == 'john' 
#     article.author == author1.name
# end

# puts art
# pp Article.all.filter { |article| article.magazine == magazine2.name}.map {|article| article.author }

# new_article = author2.add_article(magazine3, 'maaandamano')
# pp all_articles.length

# pp Magazine.find_by_name('nati')
# pp magazine2.article_titles

pp magazine2.contributing_authors