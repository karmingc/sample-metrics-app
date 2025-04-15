class ExampleController < ApplicationController
  def index
    puts "Hello, world!"
    counter.add(
      1,
      attributes: {
        "http.path_group" => "/example",
        "http.method" => "GET"
      }
    )
  end

  private

  def counter
    @_counter ||= SampleMeter.create_counter("http.server.requests", unit: "{request}", description: "Total HTTP server requests for /example.")
  end
end
