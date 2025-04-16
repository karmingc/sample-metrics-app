if ENV["MODE"] == "sqs_workers"
    puts "running shoryuken #{Process.pid}"
    Shoryuken.sqs_client_receive_message_opts = { wait_time_seconds: 20 }
end
