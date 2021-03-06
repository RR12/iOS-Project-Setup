//
// Created by Khairil Ushan on 11/15/17.
// Copyright (c) 2017 Khairil Ushan. All rights reserved.
//

import UIKit

final class SearchRepositoryWireframe {
    static func createSearchRepository() -> SearchRepositoryViewController {
        let controller = SearchRepositoryViewController()
        let presenter = AppContainer.shared.resolve(
            SearchRepositoryPresenterProtocol.self, argument: controller)
        controller.presenter = presenter
        return controller
    }
}

extension SearchRepositoryWireframe: SearchRepositoryWireframeProtocol {
    func presentRepositoryDetail(from view: SearchRepositoryViewProtocol, repo: RepoModel) {
        let detailController = RepositoryDetailWireframe.createRepositoryDetail()
        if let source = view as? UIViewController {
            source.navigationController?.pushViewController(detailController, animated: true)
        }
    }
}
