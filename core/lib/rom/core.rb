require 'dry/equalizer'
require 'dry/core/constants'

require 'rom/version'
require 'rom/constants'

# core parts
require 'rom/configuration_plugin'
require 'rom/plugin'
require 'rom/schema_plugin'
require 'rom/relation'
require 'rom-mapper'
require 'rom/mapper/configuration_plugin'
require 'rom/commands'

# rom Global
require 'rom/global'

# rom configurations
require 'rom/configuration'

# container with registries
require 'rom/container'

# container factory
require 'rom/create_container'

# register core plugins
require 'rom/plugins/relation/registry_reader'
require 'rom/plugins/relation/instrumentation'
require 'rom/plugins/command/schema'
require 'rom/plugins/schema/timestamps'

module ROM
  extend Global

  plugins do
    register :mappers, ROM::Mapper::ConfigurationPlugin, type: :configuration
    register :timestamps, ROM::Plugins::Schema::Timestamps, type: :schema
    register :registry_reader, ROM::Plugins::Relation::RegistryReader, type: :relation
    register :instrumentation, ROM::Plugins::Relation::Instrumentation, type: :relation
    register :schema, ROM::Plugins::Command::Schema, type: :command
  end
end
