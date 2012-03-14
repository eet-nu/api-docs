require './lib/markdown'
require './lib/doc_helpers'
helpers DocHelpers

# Change the CSS directory
set :css_dir, "css"

# Change the JS directory
set :js_dir, "js"

# Change the images directory
set :images_dir, "img"

set :erb, layout_engine: :haml
set :md,  layout_engine: :haml

set :markdown_engine,  :redcarpet
set :markdown_options, tables:            true,
                       with_toc_data:     true,
                       enced_code_blocks: true

configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css
  
  # Minify Javascript on build
  activate :minify_javascript
end
