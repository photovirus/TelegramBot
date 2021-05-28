// Telegram-vapor-bot-lib - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

import Vapor

public extension TGBot {

    /// Parameters container struct for `getChatMember` method
    struct GetChatMemberParams: Encodable {

        /// Unique identifier for the target chat or username of the target supergroup or channel (in the format @channelusername)
        var chatId: ChatId

        /// Unique identifier of the target user
        var userId: Int64

        /// Custom keys for coding/decoding `GetChatMemberParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case userId = "user_id"
        }

        public init(chatId: ChatId, userId: Int64) {
            self.chatId = chatId
            self.userId = userId
        }
    }

    /**
     Use this method to get information about a member of a chat. Returns a ChatMember object on success.

     SeeAlso Telegram Bot API Reference:
     [GetChatMemberParams](https://core.telegram.org/bots/api#getchatmember)
     
     - Parameters:
         - params: Parameters container, see `GetChatMemberParams` struct
     - Throws: Throws on errors
     - Returns: EventLoopFuture of `ChatMember` type
     */
    @discardableResult
    func getChatMember(params: GetChatMemberParams) throws -> EventLoopFuture<ChatMember> {
        let methodURL: URI = .init(string: getMethodURL("getChatMember"))
        let future: EventLoopFuture<ChatMember> = tgClient.post(methodURL, params: params)
        return future
    }
}
