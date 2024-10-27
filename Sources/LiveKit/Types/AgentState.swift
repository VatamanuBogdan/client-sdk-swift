/*
 * Copyright 2024 LiveKit
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

let agentStateAttributeKey = "lk.agent.state"

@objc
public enum AgentState: Int {
    case unknown
    case disconnected
    case connecting
    case initializing
    case listening
    case thinking
    case speaking
}

extension AgentState {
    static func fromString(_ rawString: String?) -> AgentState? {
        switch rawString {
        case "initializing": return .initializing
        case "listening": return .listening
        case "thinking": return .thinking
        case "speaking": return .speaking
        default: return unknown
        }
    }
}

extension AgentState: CustomStringConvertible {
    public var description: String {
        switch self {
        case .unknown: return "Unknown"
        case .disconnected: return "Disconnected"
        case .connecting: return "Connecting"
        case .initializing: return "Initializing"
        case .listening: return "Listening"
        case .thinking: return "Thinking"
        case .speaking: return "Speaking"
        }
    }
}