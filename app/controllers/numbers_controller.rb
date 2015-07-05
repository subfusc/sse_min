class NumbersController < ApplicationController
  include ActionController::Live

  def index
  end

  def stream
    x = 0
    response.headers['Content-Type'] = 'text/event-stream'
    response.headers['Cache-Control'] = 'no-cache'
    sse = SSE.new(response.stream)
    loop do
      sse.write({ number: x += 1 })
      sleep(5)
    end
  rescue
    # Connection gets closed and throws errors
  ensure
    sse.close
  end
end
