// Telegram-vapor-bot-lib - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

import Vapor

public extension TGBot {

    /// Parameters container struct for `setChatPhoto` method
    struct SetChatPhotoParams: Encodable {

        /// Unique identifier for the target chat or username of the target channel (in the format @channelusername)
        var chatId: ChatId

        /// New chat photo, uploaded using multipart/form-data
        var photo: InputFile

        /// Custom keys for coding/decoding `SetChatPhotoParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case photo = "photo"
        }

        public init(chatId: ChatId, photo: InputFile) {
            self.chatId = chatId
            self.photo = photo
        }
    }

    /**
     Use this method to set a new profile photo for the chat. Photos can't be changed for private chats. The bot must be an administrator in the chat for this to work and must have the appropriate admin rights. Returns True on success.

     SeeAlso Telegram Bot API Reference:
     [SetChatPhotoParams](https://core.telegram.org/bots/api#setchatphoto)
     
     - Parameters:
         - params: Parameters container, see `SetChatPhotoParams` struct
     - Throws: Throws on errors
     - Returns: EventLoopFuture of `Bool` type
     */
    @discardableResult
    func setChatPhoto(params: SetChatPhotoParams) throws -> EventLoopFuture<Bool> {
        let methodURL: URI = .init(string: getMethodURL("setChatPhoto"))
        let future: EventLoopFuture<Bool> = tgClient.post(methodURL, params: params)
        return future
    }
}
