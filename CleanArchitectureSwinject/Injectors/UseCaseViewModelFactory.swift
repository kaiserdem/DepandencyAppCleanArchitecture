//
//  UseCaseViewModelFactory.swift
//  CleanArchitectureSwinject
//
//  Created by kaiserdem  on 13.12.2023.
//

import Foundation
import Swinject

//public class UseCaseViewModelFactory {
//
//    private let useCaseProvider: UseCaseProvider
//
//    public init(useCaseProvider: UseCaseProvider) {
//        self.useCaseProvider = useCaseProvider
//    }
//
//    public func createViewModel<ViewModelType: UseCaseViewModel>() -> ViewModelType {
//        return ViewModelType(useCaseProvider: useCaseProvider)
//    }
//}
//
//extension UseCaseViewModelFactory {
//    public static let standart = UseCaseViewModelFactory(useCaseProvider: container)
//}
public class UseCaseViewModelFactory {
    public static func createViewModel<ViewModelType: UseCaseViewModel>() -> ViewModelType {
        
        
        
        return ViewModelType(useCaseProvider: container)
    }
}

extension Container: UseCaseProvider {
    public func build<UseCaseType>() -> UseCaseType {
        let use = UseCaseType.self
        return resolve(UseCaseType.self)!
    }
}

public extension Resolver {
    func resolve<T>() -> T {
        return resolve(T.self)!
    }
}

public let container = Container()

public extension Container {
    
    @discardableResult
    func registerSingletone<Service, Instance, Argument>(_ type: Service.Type, _ factory: @escaping (Argument) -> Instance) -> ServiceEntry<Service> {
        return register(type, factory: { factory($0.resolve(Argument.self)!) as! Service }).inObjectScope(.container)
    }
    
    @discardableResult
    func registerSingletone<Service, Instance>(_ type: Service.Type, _ factory: @escaping () -> Instance) -> ServiceEntry<Service> {
        return register(type, factory: { _ in factory() as! Service }).inObjectScope(.container)
    }

    @discardableResult
    func registerSingletone<Instance, Argument>(_ factory: @escaping (Argument) -> Instance) -> ServiceEntry<Instance> {
        return register(Instance.self, factory: { factory($0.resolve(Argument.self)!) }).inObjectScope(.container)
    }

    @discardableResult
    func registerPrototype<Instance>(_ factory: @escaping () -> Instance) -> ServiceEntry<Instance> {
        return register(Instance.self, factory: { _ in factory() }).inObjectScope(.transient)
    }

    @discardableResult
    func registerSingletone<Instance>(_ instance: Instance) -> ServiceEntry<Instance> {
        return register(Instance.self, factory: { _ in instance }).inObjectScope(.container)
    }
}
