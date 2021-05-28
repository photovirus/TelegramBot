// Telegram-vapor-bot-lib - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

import Vapor

public extension TGBot {

    /// Parameters container struct for `unbanChatMember` method
    struct UnbanChatMemberParams: Encodable {

        /// Unique identifier for the target group or username of the target supergroup or channel (in the format @username)
        var chatId: ChatId

        /// Unique identifier of the target user
        var userId: Int64

        /// Do nothing if the user is not banned
        var onlyIfBanned: Bool?

        /// Custom keys for coding/decoding `UnbanChatMemberParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case userId = "user_id"
            case onlyIfBanned = "only_if_banned"
        }

        public init(chatId: ChatId, userId: Int64, onlyIfBanned: Bool? = nil) {
            self.chatId = chatId
            self.userId = userId
            self.onlyIfBanned = onlyIfBanned
        }
    }

    /**
     Use this method to unban a previously kicked user in a supergroup or channel. The user will not return to the group or channel automatically, but will be able to join via link, etc. The bot must be an administrator for this to work. By default, this method guarantees that after the call the user is not a member of the chat, but will be able to join it. So if the user is a member of the chat they will also be removed from the chat. If you don't want this, use the parameter only_if_banned. Returns True on success.

     SeeAlso Telegram Bot API Reference:
     [UnbanChatMemberParams](https://core.telegram.org/bots/api#unbanchatmember)
     
     - Parameters:
         - params: Parameters container, see `UnbanChatMemberParams` struct
     - Throws: Throws on errors
     - Returns: EventLoopFuture of `Bool` type
     */
    @discardableResult
    func unbanChatMember(params: UnbanChatMemberParams) throws -> EventLoopFuture<Bool> {
        let methodURL: URI = .init(string: getMethodURL("unbanChatMember"))
        let future: EventLoopFuture<Bool> = tgClient.post(methodURL, params: params)
        return future
    }
}
