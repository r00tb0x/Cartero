require 'puma'
require 'puma/cli'

module Puma
  class CarteroCLI < Puma::CLI

    def initialize(argv)
      # Even though we have the command MongoDB now, we should still
      # Start the MongoDB here, since it won't hurt.
      ::Cartero::DB.start
      super(argv)
    end

    def stop
      #Cartero::DB.stop
      super
    end

    def graceful_stop
      #Cartero::DB.stop
      super
    end
  end
end
