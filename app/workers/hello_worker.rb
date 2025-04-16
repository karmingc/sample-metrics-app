class HelloWorker
  include Shoryuken::Worker
  # This is not pulling
  shoryuken_options queue: :hello, auto_delete: true

  # it is properly sending,
  # but it's not pulling
  def perform(sqs_msg, name)
    Shoryuken.logger.info("Hello #{name} from #{Process.pid}")
    counter.add(
      1,
      attributes: {
        "name" => name,
        "worker" => "hello_worker"
      }
    )
    Rails.logger.info("something should work no?")
  end

  private

  def counter
    @_counter ||= SampleMeter.create_counter("shoryuken.perform", unit: "{request}", description: "total perform calls")
  end    
end
