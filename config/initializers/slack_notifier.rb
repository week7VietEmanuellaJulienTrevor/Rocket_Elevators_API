require 'slack-notifier'
notifier = Slack::Notifier.new "https://hooks.slack.com/services/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"
notifier.username = 'akshay'
notifier.ping "Hello World from #{Rails.application.class.parent_name}"