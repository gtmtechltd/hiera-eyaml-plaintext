require 'base64'
require 'hiera/backend/eyaml/encryptor'
require 'hiera/backend/eyaml/utils'
require 'hiera/backend/eyaml/plugins'
require 'hiera/backend/eyaml/options'

class Hiera
  module Backend
    module Eyaml
      module Encryptors

        class Plaintext < Encryptor

          VERSION = "0.5.3"

          self.tag = "PLAINTEXT"

          self.options = {
            :diagnostic_message => { :desc => "String which is output as debug when using this plugin", 
                                     :short => 'w', 
                                     :type => :string, 
                                     :default => "success" }
          }

          def self.version
            Eyaml::Encryptors::Plaintext.VERSION
          end

          def self.encrypt plaintext
            diagnostic_message = self.option :diagnostic_message 
            $stderr.puts "Encrypt_string: #{diagnostic_message}"
            plaintext
          end

          def self.decrypt ciphertext
            diagnostic_message = self.option :diagnostic_message 
            $stderr.puts "Decrypt_string: #{diagnostic_message}"
            ciphertext
          end

          def self.create_keys
            diagnostic_message = self.option :diagnostic_message 
            puts "Create_keys: #{diagnostic_message}"
          end

        end

      end

    end

  end

end
