require 'base64'
require 'hiera/backend/eyaml/encryptor'
require 'hiera/backend/eyaml/utils'
require 'hiera/backend/eyaml/plugins'

class Hiera
  module Backend
    module Eyaml
      module Encryptors

        class Plaintext < Encryptor

          ENCRYPT_TAG = "PLAINTEXT"

          def self.register
            Hiera::Backend::Eyaml::Plugins.register_options([
              { :name => :badness, :desc => "Source input is a string provided as an argument", :short => 's', :type => :string }
            ])
          end

          def encrypt_string plaintext

            Base64.encode64(plaintext).strip
            
          end

          def decrypt_string ciphertext

            Base64.decode64(ciphertext)

          end

          def create_keys

            puts "Nothing to do, the plaintext plugin does not use keys"

          end

        end

      end

    end

  end

end
