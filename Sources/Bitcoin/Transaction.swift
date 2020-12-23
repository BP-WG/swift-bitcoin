import Foundation

public typealias Satoshi = UInt64

public struct Amount {
    public static let DECIMALS: UInt8 = 8
    public static let BITCOIN_SATOSHIS: UInt64 = 100_000_000

    public var satoshi: Satoshi
    public var bitcoins: Double {
        get {
            Double(satoshi) / Double(Amount.BITCOIN_SATOSHIS)
        }
        set {
            satoshi = UInt64(newValue * Double(Amount.BITCOIN_SATOSHIS))
        }
    }
}

public struct Txid {
    private let id: Data
}

public struct OutPoint {
    public let txid: Txid
    public let vout: UInt32
}

public struct Script {
    public let binary: Data
}

public typealias ScriptSig = Script
public typealias ScriptPubkey = Script

public struct WitnessEntry {
    public let binary: Data
}

public struct TxIn {
    public let previousOutput: OutPoint
    public let scriptSig: ScriptSig
    public let sequence: UInt32
    public let witness: [WitnessEntry]
}

public struct TxOut {
    public let value: Satoshi
    public let scriptPubkey: ScriptPubkey
}

public struct Transaction {
    public let version: Int32
    public let lockTime: UInt32
    public let input: [TxIn]
    public let output: [TxOut]
}
