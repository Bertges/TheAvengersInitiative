//
//  RequestManager.swift
//  TheAvengersInitiative
//
//  Created by Felippe Bertges on 30/06/21.
//

import Foundation

enum Result<T> {
    case success(T)
    case error(Error)
}

protocol RequestManagerProtocol {
    func request<T: Decodable>(httpMethod: HTTPMethod, url: URL, completion: @escaping ((_ result: Result<T>) -> Void))
}

enum HTTPMethod: String {
    case post, get, put, delete
}

enum RequestError: Error {
    case decode
}


final class RequestManager: RequestManagerProtocol {
    func request<T: Decodable>(httpMethod: HTTPMethod = .get, url: URL, completion: @escaping ((_ result: Result<T>) -> Void)) {
        var request: URLRequest = .init(url: url)
        request.httpMethod = httpMethod.rawValue

        let task: URLSessionDataTask = URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let data = data else { return }

            let decoder: JSONDecoder = .init()
            if let decodedObj: T = try? decoder.decode(T.self, from: data) {
                DispatchQueue.main.async {
                    completion(.success(decodedObj))
                }
            } else {
                DispatchQueue.main.async {
                    completion(.error(RequestError.decode))
                }
            }
        }

        task.resume()
    }
}
