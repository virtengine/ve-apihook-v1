require File.expand_path("#{File.dirname(__FILE__)}/../lib/megam/api")

require 'rubygems'
gem 'minitest' # ensure we are using the gem version
require 'minitest/autorun'
require 'time'

SANDBOX_HOST_OPTIONS = {
    :scheme => 'http',
    :host => 'http://localhost:9000/v2',
    :nonblock => false,
    :port => 9000
}


def megam(options)
    options = SANDBOX_HOST_OPTIONS.merge(options)
    mg=Megam::API.new(options)
end

def megams_new(options={})
    s_options = SANDBOX_HOST_OPTIONS.merge({
      :email => "cd@ss.co",
      :api_key => "1189a21d8965ee670536cbb61fd9f5afed8489c0",
    })
    options = s_options.merge(options)
    mg=Megam::API.new(options)
end

def megams(options={})
    s_options = SANDBOX_HOST_OPTIONS.merge({
        :email => "cd@ss.co",
        :api_key => "1189a21d8965ee670536cbb61fd9f5afed8489c0",
        :org_id => "ORG8385278424580953898",
        #:password => "bWVnYW0="
    })

    Megam::Log.level(:debug)
    options = s_options.merge(options)
    mg=Megam::API.new(options)
end

def random_domain
    "megam.co"
end

def random_id
    SecureRandom.random_number(1000)
end

def random_name
    SecureRandom.hex(15)
end

def random_apikey
    SecureRandom.hex(10)
end

def random_email
    "email@#{random_apikey}.com"
end

def domain_name
    "megambox.com"
end

def sandbox_name
    "org.megam"
end

def sandbox_apikey
    "IamAtlas{74}NobdyCanSedfefdeME#07"
end

def sandbox_email
    "tour@megam.io"
end
