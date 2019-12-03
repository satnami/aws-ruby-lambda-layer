require 'json'
require 'yaml'
require 'active_record'
require 'pg'

def hello(event:, context:)
  {
    statusCode: 200,
    body: {
      message: "Ruby Serverless! Your function executed successfully!, PG version is: #{PG.library_version}",
      input: event
    }.to_json
  }
end
