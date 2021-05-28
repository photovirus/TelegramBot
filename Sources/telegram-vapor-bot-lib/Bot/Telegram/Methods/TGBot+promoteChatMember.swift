// Telegram-vapor-bot-lib - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

import Vapor

public extension TGBot {

    /// Parameters container struct for `promoteChatMember` method
    struct PromoteChatMemberParams: Encodable {

        /// Unique identifier for the target chat or username of the target channel (in the format @channelusername)
        var chatId: ChatId

        /// Unique identifier of the target user
        var userId: Int64

        /// Pass True, if the administrator's presence in the chat is hidden
        var isAnonymous: Bool?

        /// Pass True, if the administrator can access the chat event log, chat statistics, message statistics in channels, see channel members, see anonymous administrators in supergroups and ignore slow mode. Implied by any other administrator privilege
        var canManageChat: Bool?

        /// Pass True, if the administrator can create channel posts, channels only
        var canPostMessages: Bool?

        /// Pass True, if the administrator can edit messages of other users and can pin messages, channels only
        var canEditMessages: Bool?

        /// Pass True, if the administrator can delete messages of other users
        var canDeleteMessages: Bool?

        /// Pass True, if the administrator can manage voice chats
        var canManageVoiceChats: Bool?

        /// Pass True, if the administrator can restrict, ban or unban chat members
        var canRestrictMembers: Bool?

        /// Pass True, if the administrator can add new administrators with a subset of their own privileges or demote administrators that he has promoted, directly or indirectly (promoted by administrators that were appointed by him)
        var canPromoteMembers: Bool?

        /// Pass True, if the administrator can change chat title, photo and other settings
        var canChangeInfo: Bool?

        /// Pass True, if the administrator can invite new users to the chat
        var canInviteUsers: Bool?

        /// Pass True, if the administrator can pin messages, supergroups only
        var canPinMessages: Bool?

        /// Custom keys for coding/decoding `PromoteChatMemberParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case userId = "user_id"
            case isAnonymous = "is_anonymous"
            case canManageChat = "can_manage_chat"
            case canPostMessages = "can_post_messages"
            case canEditMessages = "can_edit_messages"
            case canDeleteMessages = "can_delete_messages"
            case canManageVoiceChats = "can_manage_voice_chats"
            case canRestrictMembers = "can_restrict_members"
            case canPromoteMembers = "can_promote_members"
            case canChangeInfo = "can_change_info"
            case canInviteUsers = "can_invite_users"
            case canPinMessages = "can_pin_messages"
        }

        public init(chatId: ChatId, userId: Int64, isAnonymous: Bool? = nil, canManageChat: Bool? = nil, canPostMessages: Bool? = nil, canEditMessages: Bool? = nil, canDeleteMessages: Bool? = nil, canManageVoiceChats: Bool? = nil, canRestrictMembers: Bool? = nil, canPromoteMembers: Bool? = nil, canChangeInfo: Bool? = nil, canInviteUsers: Bool? = nil, canPinMessages: Bool? = nil) {
            self.chatId = chatId
            self.userId = userId
            self.isAnonymous = isAnonymous
            self.canManageChat = canManageChat
            self.canPostMessages = canPostMessages
            self.canEditMessages = canEditMessages
            self.canDeleteMessages = canDeleteMessages
            self.canManageVoiceChats = canManageVoiceChats
            self.canRestrictMembers = canRestrictMembers
            self.canPromoteMembers = canPromoteMembers
            self.canChangeInfo = canChangeInfo
            self.canInviteUsers = canInviteUsers
            self.canPinMessages = canPinMessages
        }
    }

    /**
     Use this method to promote or demote a user in a supergroup or a channel. The bot must be an administrator in the chat for this to work and must have the appropriate admin rights. Pass False for all boolean parameters to demote a user. Returns True on success.

     SeeAlso Telegram Bot API Reference:
     [PromoteChatMemberParams](https://core.telegram.org/bots/api#promotechatmember)
     
     - Parameters:
         - params: Parameters container, see `PromoteChatMemberParams` struct
     - Throws: Throws on errors
     - Returns: EventLoopFuture of `Bool` type
     */
    @discardableResult
    func promoteChatMember(params: PromoteChatMemberParams) throws -> EventLoopFuture<Bool> {
        let methodURL: URI = .init(string: getMethodURL("promoteChatMember"))
        let future: EventLoopFuture<Bool> = tgClient.post(methodURL, params: params)
        return future
    }
}
