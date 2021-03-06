#!/usr/bin/env ruby
#
# This handler just spits out its config and the event it read.
#
# Copyright 2011 Sonian, Inc.
#
# Released under the same terms as Sensu (the MIT license); see LICENSE
# for details.

require 'rubygems' if RUBY_VERSION < '1.9.0'
require 'sensu-handler'

class Show < Sensu::Handler

  def handle(event)
    puts 'Settings: ' + settings.to_hash.inspect
    puts 'Event: ' + event.inspect
  end

end
