class Magazine
    attr_accessor :name, :category

    @@magazine_all = []
    def initialize(name, category)
        @name = name
        @category = category
        @@magazine_all << self
    end

    def self.all
        @@magazine_all
    end

    def contributors
        # array of authors who have written for the magazine
        Article.all.select { |article| article.magazine == @name}.map {|article| article.author }
        # magazines.filter {|article| article.name }
    end


    def self.find_by_name(name)
        # returns the first magazine that matches the name
        @@magazine_all.find {|magazine| magazine.name == name}
    end

    def article_titles
        # array of all articles written for that magazine
        Article.all.filter { |article| article.magazine == @name}.collect{|article | article.title }
    end

    def contributing_authors
        # array of author who have more than 2 article for the magazine
        contributors.group_by { |author | author }.select{|name, collection| name ? collection.size>1: null}
    end
end


# magazine1= Magazine.new('vogue', 'entertainment')
# magazine2= Magazine.new('nation', 'news')

# puts magazine1.name
# puts magazine2.category 

# puts Magazine.all