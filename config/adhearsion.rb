# encoding: utf-8

Adhearsion.config do |config|

  # Centralized way to specify any Adhearsion platform or plugin configuration
  # - Execute rake config:show to view the active configuration values
  #
  # To update a plugin configuration you can write either:
  #
  #    * Option 1
  #        Adhearsion.config.<plugin-name> do |config|
  #          config.<key> = <value>
  #        end
  #
  #    * Option 2
  #        Adhearsion.config do |config|
  #          config.<plugin-name>.<key> = <value>
  #        end

  config.development do |dev|
    dev.platform.logging.level = :debug
  end

  ##
  # Use with Rayo (eg Voxeo PRISM or FreeSWITCH mod_rayo)
  #
  # config.punchblock.username = "usera@freeswitch.local-dev.mojolingo.com" # Your XMPP JID for use with Rayo
  # config.punchblock.password = "1" # Your XMPP password

  ##
  # Use with Asterisk
  #
  config.punchblock.platform = :asterisk # Use Asterisk
  config.punchblock.username = ENV['AHN_PUNCHBLOCK_USERNAME']# Your AMI username
  config.punchblock.password = ENV['AHN_PUNCHBLOCK_PASSWORD'] # Your AMI password
  # config.punchblock.host = "asterisk.local-dev.mojolingo.com" # Your AMI host
end
