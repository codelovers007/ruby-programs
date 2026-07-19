class FixedWindowRateLimit
  # 5 requests/minutes(or 60 seconds)
  
  LIMIT = 5
  WINDOW = 60

  def initialize
    @requests = {}
  end

  def allow?(user_id)
    current_time = Time.now.to_i

    @requests[user_id] ||= {
      count: 0,
      window_start: current_time
    }

    user = @requests[user_id]

    if current_time - user[:window_start] >= WINDOW
      # Reset counter If request goes above the window size
      
      user[:count] = 0
      user[:window_start] = current_time
    end

    if user[:count] < LIMIT
      user[:count] += 1
      true
    else
      false
    end
  end
end

limiter = FixedWindowRateLimit.new

5.times { puts limiter.allow?(1) }
puts limiter.allow?(1)
