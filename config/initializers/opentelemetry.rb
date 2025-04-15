# config/initializers/opentelemetry.rb
require "opentelemetry/sdk"
require "opentelemetry-exporter-otlp"
require 'opentelemetry-metrics-sdk'

OpenTelemetry::SDK.configure do |c|
  c.service_name = "sample-metrics-app"
end

SampleMeter = OpenTelemetry.meter_provider.meter("sample-meter")
