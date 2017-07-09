require 'ansi/code'
require 'slim'

set :layout, :_auto_layout
set :slim, :layout_engine => :slim, :format => :html

activate :blog do |blog|
    blog.name = 'EXAMPLE'
    blog.prefix = 'blog'
    blog.default_extension = '.md'
    blog.sources = 'articles/:title.html'
    blog.permalink = ':year/:title.html'
    blog.layout = 'layouts/article'
    blog.tag_template = 'layouts/tag.html'
    blog.calendar_template = 'layouts/calender'
    blog.paginate = false
end

configure :build do
    activate :gzip
    activate :minify_css
    activate :minify_javascript
    activate :cache_buster
end