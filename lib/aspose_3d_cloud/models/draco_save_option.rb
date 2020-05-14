=begin
#Aspose.3D Cloud API Reference

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 3.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.11-SNAPSHOT

=end

require 'date'

module AsposeThreeDCloud

  class DracoSaveOption
    # Gets or sets  of the SaveFormat.
    attr_accessor :save_format

    # Some files like OBJ depends on external file, the lookup paths will allows Aspose.3D to look for external file to load
    attr_accessor :lookup_paths

    # The file name of the exporting/importing scene. This is optional, but useful when serialize external assets like OBJ's material.
    attr_accessor :file_name

    # The file format like FBX,U3D,PDF ....
    attr_accessor :file_format

    # Quantization bits for position, default value is 14
    attr_accessor :position_bits

    # Quantization bits for texture coordinate, default value is 12
    attr_accessor :texture_coordinate_bits

    # Quantization bits for vertex color, default value is 10
    attr_accessor :color_bits

    # Quantization bits for normal vectors, default value is 10
    attr_accessor :normal_bits

    # Compression level, default value is Aspose.ThreeD.Formats.DracoCompressionLevel.Standard.
    attr_accessor :compression_level


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'save_format' => :'SaveFormat',
        :'lookup_paths' => :'LookupPaths',
        :'file_name' => :'FileName',
        :'file_format' => :'FileFormat',
        :'position_bits' => :'PositionBits',
        :'texture_coordinate_bits' => :'TextureCoordinateBits',
        :'color_bits' => :'ColorBits',
        :'normal_bits' => :'NormalBits',
        :'compression_level' => :'CompressionLevel'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'save_format' => :'SaveFormat',
        :'lookup_paths' => :'Array<String>',
        :'file_name' => :'String',
        :'file_format' => :'String',
        :'position_bits' => :'Integer',
        :'texture_coordinate_bits' => :'Integer',
        :'color_bits' => :'Integer',
        :'normal_bits' => :'Integer',
        :'compression_level' => :'DracoCompressionLevel'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'SaveFormat')
        self.save_format = attributes[:'SaveFormat']
      end

      if attributes.has_key?(:'LookupPaths')
        if (value = attributes[:'LookupPaths']).is_a?(Array)
          self.lookup_paths = value
        end
      end

      if attributes.has_key?(:'FileName')
        self.file_name = attributes[:'FileName']
      end

      if attributes.has_key?(:'FileFormat')
        self.file_format = attributes[:'FileFormat']
      end

      if attributes.has_key?(:'PositionBits')
        self.position_bits = attributes[:'PositionBits']
      end

      if attributes.has_key?(:'TextureCoordinateBits')
        self.texture_coordinate_bits = attributes[:'TextureCoordinateBits']
      end

      if attributes.has_key?(:'ColorBits')
        self.color_bits = attributes[:'ColorBits']
      end

      if attributes.has_key?(:'NormalBits')
        self.normal_bits = attributes[:'NormalBits']
      end

      if attributes.has_key?(:'CompressionLevel')
        self.compression_level = attributes[:'CompressionLevel']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          save_format == o.save_format &&
          lookup_paths == o.lookup_paths &&
          file_name == o.file_name &&
          file_format == o.file_format &&
          position_bits == o.position_bits &&
          texture_coordinate_bits == o.texture_coordinate_bits &&
          color_bits == o.color_bits &&
          normal_bits == o.normal_bits &&
          compression_level == o.compression_level
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [save_format, lookup_paths, file_name, file_format, position_bits, texture_coordinate_bits, color_bits, normal_bits, compression_level].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = AsposeThreeDCloud.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
