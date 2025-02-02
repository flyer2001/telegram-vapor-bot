// Telegram-vapor-bot - Telegram Bot Swift SDK.

/**
 Represents a link to an MP3 audio file. By default, this audio file will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the audio.

 SeeAlso Telegram Bot API Reference:
 [InlineQueryResultAudio](https://core.telegram.org/bots/api#inlinequeryresultaudio)
 */
public final class TGInlineQueryResultAudio: Codable {

    /// Custom keys for coding/decoding `InlineQueryResultAudio` struct
    public enum CodingKeys: String, CodingKey {
        case type = "type"
        case id = "id"
        case audioUrl = "audio_url"
        case title = "title"
        case caption = "caption"
        case parseMode = "parse_mode"
        case captionEntities = "caption_entities"
        case performer = "performer"
        case audioDuration = "audio_duration"
        case replyMarkup = "reply_markup"
        case inputMessageContent = "input_message_content"
    }

    /// Type of the result, must be audio
    public var type: String

    /// Unique identifier for this result, 1-64 bytes
    public var id: String

    /// A valid URL for the audio file
    public var audioUrl: String

    /// Title
    public var title: String

    /// Optional. Caption, 0-1024 characters after entities parsing
    public var caption: String?

    /// Optional. Mode for parsing entities in the audio caption. See formatting options for more details.
    public var parseMode: String?

    /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
    public var captionEntities: [TGMessageEntity]?

    /// Optional. Performer
    public var performer: String?

    /// Optional. Audio duration in seconds
    public var audioDuration: Int?

    /// Optional. Inline keyboard attached to the message
    public var replyMarkup: TGInlineKeyboardMarkup?

    /// Optional. Content of the message to be sent instead of the audio
    public var inputMessageContent: TGInputMessageContent?

    public init (type: String, id: String, audioUrl: String, title: String, caption: String? = nil, parseMode: String? = nil, captionEntities: [TGMessageEntity]? = nil, performer: String? = nil, audioDuration: Int? = nil, replyMarkup: TGInlineKeyboardMarkup? = nil, inputMessageContent: TGInputMessageContent? = nil) {
        self.type = type
        self.id = id
        self.audioUrl = audioUrl
        self.title = title
        self.caption = caption
        self.parseMode = parseMode
        self.captionEntities = captionEntities
        self.performer = performer
        self.audioDuration = audioDuration
        self.replyMarkup = replyMarkup
        self.inputMessageContent = inputMessageContent
    }
}
