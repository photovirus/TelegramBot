// Telegram-vapor-bot-lib - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

import Vapor

public extension TGBot {

    /// Parameters container struct for `kickChatMember` method
    struct KickChatMemberParams: Encodable {

        /// Unique identifier for the target group or username of the target supergroup or channel (in the format @channelusername)
        var chatId: ChatId

        /// Unique identifier of the target user
        var userId: Int64

        /// Date when the user will be unbanned, unix time. If user is banned for more than 366 days or less than 30 seconds from the current time they are considered to be banned forever. Applied for supergroups and channels only.
        var untilDate: Int?

        /// Pass True to delete all messages from the chat for the user that is being removed. If False, the user will be able to see messages in the group that were sent before the user was removed. Always True for supergroups and channels.
        var revokeMessages: Bool?

        /// Custom keys for coding/decoding `KickChatMemberParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case userId = "user_id"
            case untilDate = "until_date"
            case revokeMessages = "revoke_messages"
        }

        public init(chatId: ChatId, userId: Int64, untilDate: Int? = nil, revokeMessages: Bool? = nil) {
            self.chatId = chatId
            self.userId = userId
            self.untilDate = untilDate
            self.revokeMessages = revokeMessages
        }
    }

    /**
     Use this method to kick a user from a group, a supergroup or a channel. In the case of supergroups and channels, the user will not be able to return to the chat on their own using invite links, etc., unless unbanned first. The bot must be an administrator in the chat for this to work and must have the appropriate admin rights. Returns True on success.

     SeeAlso Telegram Bot API Reference:
     [KickChatMemberParams](https://core.telegram.org/bots/api#kickchatmember)
     
     - Parameters:
         - params: Parameters container, see `KickChatMemberParams` struct
     - Throws: Throws on errors
     - Returns: EventLoopFuture of `Bool` type
     */
    @discardableResult
    func kickChatMember(params: KickChatMemberParams) throws -> EventLoopFuture<Bool> {
        let methodURL: URI = .init(string: getMethodURL("kickChatMember"))
        let future: EventLoopFuture<Bool> = tgClient.post(methodURL, params: params)
        return future
    }
}
