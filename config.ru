use Rack::Static,
  :urls => ["/img", "/js", "/css", "/fonts", "/ionicons", "/"],
  :root => "public",
  :index => "index.html",
  :header_rules => [
    [:all, {'Cache-Control' => 'public, max-age=86400'}]
  ]

run lambda { |env|
  [
    404,
    { 'Content-Type' => 'text/html' },
    ['404 - page not found']
  ]
}
