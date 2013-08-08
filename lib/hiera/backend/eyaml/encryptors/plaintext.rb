require 'base64'
require 'hiera/backend/eyaml/encryptor'
require 'hiera/backend/eyaml/utils'

class Hiera
  module Backend
    module Eyaml
      module Encryptors

        class Plaintext < Encryptor

          ENCRYPT_TAG = "PLAINTEXT"

          def encrypt_string plaintext

            ciphertext_as_block = Base64.encode64(plaintext).strip
            ciphertext_as_block
            
          end

          def decrypt_string ciphertext

            ciphertext_decoded = Base64.decode64(ciphertext)
            ciphertext_decoded

          end

          def create_keys

            puts "Nothing to do"

          end

        end

      end

    end

  end

end
