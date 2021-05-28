// Telegram-vapor-bot-lib - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

import Vapor

public extension TGBot {

    /// Parameters container struct for `sendVideoNote` method
    struct SendVideoNoteParams: Encodable {

        /// Unique identifier for the target chat or username of the target channel (in the format @channelusername)
        var chatId: ChatId

        /// Video note to send. Pass a file_id as String to send a video note that exists on the Telegram servers (recommended) or upload a new video using multipart/form-data. More info on Sending Files ». Sending video notes by a URL is currently unsupported
        var videoNote: FileInfo

        /// Duration of sent video in seconds
        var duration: Int?

        /// Video width and height, i.e. diameter of the video message
        var length: Int?

        /// Thumbnail of the file sent; can be ignored if thumbnail generation for the file is supported server-side. The thumbnail should be in JPEG format and less than 200 kB in size. A thumbnail's width and height should not exceed 320. Ignored if the file is not uploaded using multipart/form-data. Thumbnails can't be reused and can be only uploaded as a new file, so you can pass “attach://<file_attach_name>” if the thumbnail was uploaded using multipart/form-data under <file_attach_name>. More info on Sending Files »
        var thumb: FileInfo?

        /// Sends the message silently. Users will receive a notification with no sound.
        var disableNotification: Bool?

        /// If the message is a reply, ID of the original message
        var replyToMessageId: Int?

        /// Pass True, if the message should be sent even if the specified replied-to message is not found
        var allowSendingWithoutReply: Bool?

        /// Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user.
        var replyMarkup: ReplyMarkup?

        /// Custom keys for coding/decoding `SendVideoNoteParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case videoNote = "video_note"
            case duration = "duration"
            case length = "length"
            case thumb = "thumb"
            case disableNotification = "disable_notification"
            case replyToMessageId = "reply_to_message_id"
            case allowSendingWithoutReply = "allow_sending_without_reply"
            case replyMarkup = "reply_markup"
        }

        public init(chatId: ChatId, videoNote: FileInfo, duration: Int? = nil, length: Int? = nil, thumb: FileInfo? = nil, disableNotification: Bool? = nil, replyToMessageId: Int? = nil, allowSendingWithoutReply: Bool? = nil, replyMarkup: ReplyMarkup? = nil) {
            self.chatId = chatId
            self.videoNote = videoNote
            self.duration = duration
            self.length = length
            self.thumb = thumb
            self.disableNotification = disableNotification
            self.replyToMessageId = replyToMessageId
            self.allowSendingWithoutReply = allowSendingWithoutReply
            self.replyMarkup = replyMarkup
        }
    }

    /**
     As of v.4.0, Telegram clients support rounded square mp4 videos of up to 1 minute long. Use this method to send video messages. On success, the sent Message is returned.

     SeeAlso Telegram Bot API Reference:
     [SendVideoNoteParams](https://core.telegram.org/bots/api#sendvideonote)
     
     - Parameters:
         - params: Parameters container, see `SendVideoNoteParams` struct
     - Throws: Throws on errors
     - Returns: EventLoopFuture of `Message` type
     */
    @discardableResult
    func sendVideoNote(params: SendVideoNoteParams) throws -> EventLoopFuture<Message> {
        let methodURL: URI = .init(string: getMethodURL("sendVideoNote"))
        let future: EventLoopFuture<Message> = tgClient.post(methodURL, params: params)
        return future
    }
}
