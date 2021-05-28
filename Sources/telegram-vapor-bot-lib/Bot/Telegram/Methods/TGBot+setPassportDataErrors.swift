// Telegram-vapor-bot-lib - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

import Vapor

public extension TGBot {

    /// Parameters container struct for `setPassportDataErrors` method
    struct SetPassportDataErrorsParams: Encodable {

        /// User identifier
        var userId: Int64

        /// A JSON-serialized array describing the errors
        var errors: [PassportElementError]

        /// Custom keys for coding/decoding `SetPassportDataErrorsParams` struct
        enum CodingKeys: String, CodingKey {
            case userId = "user_id"
            case errors = "errors"
        }

        public init(userId: Int64, errors: [PassportElementError]) {
            self.userId = userId
            self.errors = errors
        }
    }

    /**
     Informs a user that some of the Telegram Passport elements they provided contains errors. The user will not be able to re-submit their Passport to you until the errors are fixed (the contents of the field for which you returned the error must change). Returns True on success.
     Use this if the data submitted by the user doesn't satisfy the standards your service requires for any reason. For example, if a birthday date seems invalid, a submitted document is blurry, a scan shows evidence of tampering, etc. Supply some details in the error message to make sure the user knows how to correct the issues.

     SeeAlso Telegram Bot API Reference:
     [SetPassportDataErrorsParams](https://core.telegram.org/bots/api#setpassportdataerrors)
     
     - Parameters:
         - params: Parameters container, see `SetPassportDataErrorsParams` struct
     - Throws: Throws on errors
     - Returns: EventLoopFuture of `Bool` type
     */
    @discardableResult
    func setPassportDataErrors(params: SetPassportDataErrorsParams) throws -> EventLoopFuture<Bool> {
        let methodURL: URI = .init(string: getMethodURL("setPassportDataErrors"))
        let future: EventLoopFuture<Bool> = tgClient.post(methodURL, params: params)
        return future
    }
}
