// Telegram-vapor-bot - Telegram Bot Swift SDK.

/**
 Upon receiving a message with this object, Telegram clients will remove the current custom keyboard and display the default letter-keyboard. By default, custom keyboards are displayed until a new keyboard is sent by a bot. An exception is made for one-time keyboards that are hidden immediately after the user presses a button (see ReplyKeyboardMarkup).

 SeeAlso Telegram Bot API Reference:
 [ReplyKeyboardRemove](https://core.telegram.org/bots/api#replykeyboardremove)
 **/
public final class TGReplyKeyboardRemove: Codable {

    /// Custom keys for coding/decoding `ReplyKeyboardRemove` struct
    public enum CodingKeys: String, CodingKey {
        case removeKeyboard = "remove_keyboard"
        case selective = "selective"
    }

    /// Requests clients to remove the custom keyboard (user will not be able to summon this keyboard; if you want to hide the keyboard from sight but keep it accessible, use one_time_keyboard in ReplyKeyboardMarkup)
    public var removeKeyboard: Bool = true

    /// Optional. Use this parameter if you want to remove the keyboard for specific users only. Targets: 1) users that are @mentioned in the text of the Message object; 2) if the bot's message is a reply (has reply_to_message_id), sender of the original message.
    /// 
    /// Example: A user votes in a poll, bot returns confirmation message in reply to the vote and removes the keyboard for that user, while still showing the keyboard with poll options to users who haven't voted yet.
    public var selective: Bool?

    public init (removeKeyboard: Bool = true, selective: Bool? = nil) {
        self.removeKeyboard = removeKeyboard
        self.selective = selective
    }
}
