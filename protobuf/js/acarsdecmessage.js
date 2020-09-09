// source: airframes_client_frame.proto
/**
 * @fileoverview
 * @enhanceable
 * @suppress {messageConventions} JS Compiler reports an error if a variable or
 *     field starts with 'MSG_' and isn't a translatable message.
 * @public
 */
// GENERATED CODE -- DO NOT EDIT!

goog.provide('proto.airframes.AcarsdecMessage');

goog.require('jspb.BinaryReader');
goog.require('jspb.BinaryWriter');
goog.require('jspb.Message');

/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.airframes.AcarsdecMessage = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.airframes.AcarsdecMessage, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.airframes.AcarsdecMessage.displayName = 'proto.airframes.AcarsdecMessage';
}



if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.airframes.AcarsdecMessage.prototype.toObject = function(opt_includeInstance) {
  return proto.airframes.AcarsdecMessage.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.airframes.AcarsdecMessage} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.airframes.AcarsdecMessage.toObject = function(includeInstance, msg) {
  var f, obj = {
    timestamp: jspb.Message.getFloatingPointFieldWithDefault(msg, 1, 0.0),
    stationId: jspb.Message.getFieldWithDefault(msg, 2, ""),
    channel: jspb.Message.getFieldWithDefault(msg, 3, 0),
    frequency: jspb.Message.getFloatingPointFieldWithDefault(msg, 4, 0.0),
    level: jspb.Message.getFieldWithDefault(msg, 5, 0),
    error: jspb.Message.getFieldWithDefault(msg, 6, 0),
    mode: jspb.Message.getFieldWithDefault(msg, 7, ""),
    label: jspb.Message.getFieldWithDefault(msg, 8, ""),
    blockId: jspb.Message.getFieldWithDefault(msg, 9, ""),
    ack: jspb.Message.getFieldWithDefault(msg, 10, ""),
    tail: jspb.Message.getFieldWithDefault(msg, 11, ""),
    flight: jspb.Message.getFieldWithDefault(msg, 12, ""),
    messageNumber: jspb.Message.getFieldWithDefault(msg, 13, ""),
    text: jspb.Message.getFieldWithDefault(msg, 14, ""),
    end: jspb.Message.getBooleanFieldWithDefault(msg, 15, false)
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.airframes.AcarsdecMessage}
 */
proto.airframes.AcarsdecMessage.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.airframes.AcarsdecMessage;
  return proto.airframes.AcarsdecMessage.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.airframes.AcarsdecMessage} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.airframes.AcarsdecMessage}
 */
proto.airframes.AcarsdecMessage.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {number} */ (reader.readDouble());
      msg.setTimestamp(value);
      break;
    case 2:
      var value = /** @type {string} */ (reader.readString());
      msg.setStationId(value);
      break;
    case 3:
      var value = /** @type {number} */ (reader.readUint32());
      msg.setChannel(value);
      break;
    case 4:
      var value = /** @type {number} */ (reader.readDouble());
      msg.setFrequency(value);
      break;
    case 5:
      var value = /** @type {number} */ (reader.readSint32());
      msg.setLevel(value);
      break;
    case 6:
      var value = /** @type {number} */ (reader.readUint32());
      msg.setError(value);
      break;
    case 7:
      var value = /** @type {string} */ (reader.readString());
      msg.setMode(value);
      break;
    case 8:
      var value = /** @type {string} */ (reader.readString());
      msg.setLabel(value);
      break;
    case 9:
      var value = /** @type {string} */ (reader.readString());
      msg.setBlockId(value);
      break;
    case 10:
      var value = /** @type {string} */ (reader.readString());
      msg.setAck(value);
      break;
    case 11:
      var value = /** @type {string} */ (reader.readString());
      msg.setTail(value);
      break;
    case 12:
      var value = /** @type {string} */ (reader.readString());
      msg.setFlight(value);
      break;
    case 13:
      var value = /** @type {string} */ (reader.readString());
      msg.setMessageNumber(value);
      break;
    case 14:
      var value = /** @type {string} */ (reader.readString());
      msg.setText(value);
      break;
    case 15:
      var value = /** @type {boolean} */ (reader.readBool());
      msg.setEnd(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.airframes.AcarsdecMessage.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.airframes.AcarsdecMessage.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.airframes.AcarsdecMessage} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.airframes.AcarsdecMessage.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getTimestamp();
  if (f !== 0.0) {
    writer.writeDouble(
      1,
      f
    );
  }
  f = message.getStationId();
  if (f.length > 0) {
    writer.writeString(
      2,
      f
    );
  }
  f = message.getChannel();
  if (f !== 0) {
    writer.writeUint32(
      3,
      f
    );
  }
  f = message.getFrequency();
  if (f !== 0.0) {
    writer.writeDouble(
      4,
      f
    );
  }
  f = message.getLevel();
  if (f !== 0) {
    writer.writeSint32(
      5,
      f
    );
  }
  f = message.getError();
  if (f !== 0) {
    writer.writeUint32(
      6,
      f
    );
  }
  f = message.getMode();
  if (f.length > 0) {
    writer.writeString(
      7,
      f
    );
  }
  f = message.getLabel();
  if (f.length > 0) {
    writer.writeString(
      8,
      f
    );
  }
  f = message.getBlockId();
  if (f.length > 0) {
    writer.writeString(
      9,
      f
    );
  }
  f = message.getAck();
  if (f.length > 0) {
    writer.writeString(
      10,
      f
    );
  }
  f = message.getTail();
  if (f.length > 0) {
    writer.writeString(
      11,
      f
    );
  }
  f = message.getFlight();
  if (f.length > 0) {
    writer.writeString(
      12,
      f
    );
  }
  f = message.getMessageNumber();
  if (f.length > 0) {
    writer.writeString(
      13,
      f
    );
  }
  f = message.getText();
  if (f.length > 0) {
    writer.writeString(
      14,
      f
    );
  }
  f = message.getEnd();
  if (f) {
    writer.writeBool(
      15,
      f
    );
  }
};


/**
 * optional double timestamp = 1;
 * @return {number}
 */
proto.airframes.AcarsdecMessage.prototype.getTimestamp = function() {
  return /** @type {number} */ (jspb.Message.getFloatingPointFieldWithDefault(this, 1, 0.0));
};


/**
 * @param {number} value
 * @return {!proto.airframes.AcarsdecMessage} returns this
 */
proto.airframes.AcarsdecMessage.prototype.setTimestamp = function(value) {
  return jspb.Message.setProto3FloatField(this, 1, value);
};


/**
 * optional string station_id = 2;
 * @return {string}
 */
proto.airframes.AcarsdecMessage.prototype.getStationId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.airframes.AcarsdecMessage} returns this
 */
proto.airframes.AcarsdecMessage.prototype.setStationId = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};


/**
 * optional uint32 channel = 3;
 * @return {number}
 */
proto.airframes.AcarsdecMessage.prototype.getChannel = function() {
  return /** @type {number} */ (jspb.Message.getFieldWithDefault(this, 3, 0));
};


/**
 * @param {number} value
 * @return {!proto.airframes.AcarsdecMessage} returns this
 */
proto.airframes.AcarsdecMessage.prototype.setChannel = function(value) {
  return jspb.Message.setProto3IntField(this, 3, value);
};


/**
 * optional double frequency = 4;
 * @return {number}
 */
proto.airframes.AcarsdecMessage.prototype.getFrequency = function() {
  return /** @type {number} */ (jspb.Message.getFloatingPointFieldWithDefault(this, 4, 0.0));
};


/**
 * @param {number} value
 * @return {!proto.airframes.AcarsdecMessage} returns this
 */
proto.airframes.AcarsdecMessage.prototype.setFrequency = function(value) {
  return jspb.Message.setProto3FloatField(this, 4, value);
};


/**
 * optional sint32 level = 5;
 * @return {number}
 */
proto.airframes.AcarsdecMessage.prototype.getLevel = function() {
  return /** @type {number} */ (jspb.Message.getFieldWithDefault(this, 5, 0));
};


/**
 * @param {number} value
 * @return {!proto.airframes.AcarsdecMessage} returns this
 */
proto.airframes.AcarsdecMessage.prototype.setLevel = function(value) {
  return jspb.Message.setProto3IntField(this, 5, value);
};


/**
 * optional uint32 error = 6;
 * @return {number}
 */
proto.airframes.AcarsdecMessage.prototype.getError = function() {
  return /** @type {number} */ (jspb.Message.getFieldWithDefault(this, 6, 0));
};


/**
 * @param {number} value
 * @return {!proto.airframes.AcarsdecMessage} returns this
 */
proto.airframes.AcarsdecMessage.prototype.setError = function(value) {
  return jspb.Message.setProto3IntField(this, 6, value);
};


/**
 * optional string mode = 7;
 * @return {string}
 */
proto.airframes.AcarsdecMessage.prototype.getMode = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 7, ""));
};


/**
 * @param {string} value
 * @return {!proto.airframes.AcarsdecMessage} returns this
 */
proto.airframes.AcarsdecMessage.prototype.setMode = function(value) {
  return jspb.Message.setProto3StringField(this, 7, value);
};


/**
 * optional string label = 8;
 * @return {string}
 */
proto.airframes.AcarsdecMessage.prototype.getLabel = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 8, ""));
};


/**
 * @param {string} value
 * @return {!proto.airframes.AcarsdecMessage} returns this
 */
proto.airframes.AcarsdecMessage.prototype.setLabel = function(value) {
  return jspb.Message.setProto3StringField(this, 8, value);
};


/**
 * optional string block_id = 9;
 * @return {string}
 */
proto.airframes.AcarsdecMessage.prototype.getBlockId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 9, ""));
};


/**
 * @param {string} value
 * @return {!proto.airframes.AcarsdecMessage} returns this
 */
proto.airframes.AcarsdecMessage.prototype.setBlockId = function(value) {
  return jspb.Message.setProto3StringField(this, 9, value);
};


/**
 * optional string ack = 10;
 * @return {string}
 */
proto.airframes.AcarsdecMessage.prototype.getAck = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 10, ""));
};


/**
 * @param {string} value
 * @return {!proto.airframes.AcarsdecMessage} returns this
 */
proto.airframes.AcarsdecMessage.prototype.setAck = function(value) {
  return jspb.Message.setProto3StringField(this, 10, value);
};


/**
 * optional string tail = 11;
 * @return {string}
 */
proto.airframes.AcarsdecMessage.prototype.getTail = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 11, ""));
};


/**
 * @param {string} value
 * @return {!proto.airframes.AcarsdecMessage} returns this
 */
proto.airframes.AcarsdecMessage.prototype.setTail = function(value) {
  return jspb.Message.setProto3StringField(this, 11, value);
};


/**
 * optional string flight = 12;
 * @return {string}
 */
proto.airframes.AcarsdecMessage.prototype.getFlight = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 12, ""));
};


/**
 * @param {string} value
 * @return {!proto.airframes.AcarsdecMessage} returns this
 */
proto.airframes.AcarsdecMessage.prototype.setFlight = function(value) {
  return jspb.Message.setProto3StringField(this, 12, value);
};


/**
 * optional string message_number = 13;
 * @return {string}
 */
proto.airframes.AcarsdecMessage.prototype.getMessageNumber = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 13, ""));
};


/**
 * @param {string} value
 * @return {!proto.airframes.AcarsdecMessage} returns this
 */
proto.airframes.AcarsdecMessage.prototype.setMessageNumber = function(value) {
  return jspb.Message.setProto3StringField(this, 13, value);
};


/**
 * optional string text = 14;
 * @return {string}
 */
proto.airframes.AcarsdecMessage.prototype.getText = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 14, ""));
};


/**
 * @param {string} value
 * @return {!proto.airframes.AcarsdecMessage} returns this
 */
proto.airframes.AcarsdecMessage.prototype.setText = function(value) {
  return jspb.Message.setProto3StringField(this, 14, value);
};


/**
 * optional bool end = 15;
 * @return {boolean}
 */
proto.airframes.AcarsdecMessage.prototype.getEnd = function() {
  return /** @type {boolean} */ (jspb.Message.getBooleanFieldWithDefault(this, 15, false));
};


/**
 * @param {boolean} value
 * @return {!proto.airframes.AcarsdecMessage} returns this
 */
proto.airframes.AcarsdecMessage.prototype.setEnd = function(value) {
  return jspb.Message.setProto3BooleanField(this, 15, value);
};

