# encoding: utf-8
require "logstash/devutils/rake"
require "paquet"

TARGET_DIRECTORY = File.join(File.dirname(__FILE__), "dependencies")

Paquet::Task.new(TARGET_DIRECTORY) do
  pack "manticore"
  pack "launchy"
  pack "gemoji"
  pack "logstash-output-elasticsearch"

  # Everything not defined here will be assumed to be provided
  # by the target installation
  ignore "logstash-core-plugin-api"
  ignore "logstash-core"
end
