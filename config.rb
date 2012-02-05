require './lib/markdown'
require './lib/doc_helpers'
helpers DocHelpers

activate :directory_indexes

# Change the CSS directory
set :css_dir, "css"

# Change the JS directory
set :js_dir, "js"

# Change the images directory
set :images_dir, "img"

set :erb, layout_engine: :haml
set :md,  layout_engine: :haml

set :markdown_engine, :redcarpet
set :markdown_options, tables: true,
               with_toc_data: true,
               fenced_code_blocks: true
