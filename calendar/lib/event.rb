require "pry"
    class Event
        attr_accessor :start_date, :length, :title, :attendees
        @@all_events = []
        @@all_attendees = []
        
        def initialize(event_to_save)
            @event = event_to_save
            @@all_events << self
            @start_date = Time.parse
            @length = 60 * time_to_i
            @title = text_to_s
            @attendee = email_to_save
            @@all_attendees << self
        end
        
        def length
            length = length * 60
        end

        def postpone_24h
            time = time + (60 * 60 * 24)
        end
          
        def end_date
            end_date = start_date + length % 24
        end

        def is_past
            end_date < Time.now
        end

        def is_future
            !self.is_past

        def is soon
            start_date < 30 * 60 + Time.now_to_i
        end

        def self.all
            return @@all_events
            return @@all_attendees
        end

    end
 
binding.pry
puts "end of file"