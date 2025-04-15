if ENV["MODE"] == "sqs_workers"
    puts "running shoryuken"
    Shoryuken.sqs_client_receive_message_opts[:hello] = { wait_time_seconds: 20 }
end
