// Telegram-vapor-bot-lib - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

import Vapor

public extension TGBot {

    /// Parameters container struct for `answerShippingQuery` method
    struct AnswerShippingQueryParams: Encodable {

        /// Unique identifier for the query to be answered
        var shippingQueryId: String

        /// Specify True if delivery to the specified address is possible and False if there are any problems (for example, if delivery to the specified address is not possible)
        var ok: Bool

        /// Required if ok is True. A JSON-serialized array of available shipping options.
        var shippingOptions: [ShippingOption]?

        /// Required if ok is False. Error message in human readable form that explains why it is impossible to complete the order (e.g. "Sorry, delivery to your desired address is unavailable'). Telegram will display this message to the user.
        var errorMessage: String?

        /// Custom keys for coding/decoding `AnswerShippingQueryParams` struct
        enum CodingKeys: String, CodingKey {
            case shippingQueryId = "shipping_query_id"
            case ok = "ok"
            case shippingOptions = "shipping_options"
            case errorMessage = "error_message"
        }

        public init(shippingQueryId: String, ok: Bool, shippingOptions: [ShippingOption]? = nil, errorMessage: String? = nil) {
            self.shippingQueryId = shippingQueryId
            self.ok = ok
            self.shippingOptions = shippingOptions
            self.errorMessage = errorMessage
        }
    }

    /**
     If you sent an invoice requesting a shipping address and the parameter is_flexible was specified, the Bot API will send an Update with a shipping_query field to the bot. Use this method to reply to shipping queries. On success, True is returned.

     SeeAlso Telegram Bot API Reference:
     [AnswerShippingQueryParams](https://core.telegram.org/bots/api#answershippingquery)
     
     - Parameters:
         - params: Parameters container, see `AnswerShippingQueryParams` struct
     - Throws: Throws on errors
     - Returns: EventLoopFuture of `Bool` type
     */
    @discardableResult
    func answerShippingQuery(params: AnswerShippingQueryParams) throws -> EventLoopFuture<Bool> {
        let methodURL: URI = .init(string: getMethodURL("answerShippingQuery"))
        let future: EventLoopFuture<Bool> = tgClient.post(methodURL, params: params)
        return future
    }
}
