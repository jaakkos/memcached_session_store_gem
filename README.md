# MemcachedSessionStore

## Description

This is a fork of the MemCacheStore, modified to work with Memcached. Reason for this gem is that 
Heroku (http://www.heroku.com) provides memcached plugins through NorthScale (http://www.northscale.com/) and it requires
authentication. MemCacheStore uses memcache-client and it doesnt provide authentication.

## Installation
 
 gem install memcached_session_store
 
## Usage

In config/enviroment.rb:
  config.gem "memcached"
  config.gem "memcached_session_store"
  
In the session_store initializer:
  require "memcached_session_store"
  ActionController::Base.session_store = :memcached_session_store

## License

  Copyright (c) 2010 Jaakko Suutarla

  Permission is hereby granted, free of charge, to any person
  obtaining a copy of this software and associated documentation
  files (the "Software"), to deal in the Software without
  restriction, including without limitation the rights to use,
  copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the
  Software is furnished to do so, subject to the following
  conditions:

  The above copyright notice and this permission notice shall be
  included in all copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
  OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
  HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
  WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
  OTHER DEALINGS IN THE SOFTWARE.