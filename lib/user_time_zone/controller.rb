module UserTimeZone
  module Controller
    protected

    def with_user_time_zone(&block)
      zone = user_for_time_zone.time_zone.presence
      Time.use_zone(zone, &block)
    end

    def user_for_time_zone
      current_user
    end
  end
end
