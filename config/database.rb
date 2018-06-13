require 'pg'
require 'active_record'

ActiveRecord::Base.establish_connection(
    host: '',
    adapter: 'postgresql',
    encoding: 'utf-8',
    database: 'order_genius'
)
