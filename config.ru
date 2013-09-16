require 'bundler/setup'
require 'rack'
require 'rack/contrib/try_static'
require 'rack/contrib/not_found'

PUBLIC_PATH = 'public'

use Rack::TryStatic,
  root: PUBLIC_PATH,
  urls: %w[/],
  try: ['.html', 'index.html', '/index.html']

run Rack::NotFound.new "#{PUBLIC_PATH}/404.html"
