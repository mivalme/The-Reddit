//
//  FeedInteractorTests.swift
//  The RedditTests
//
//  Created by Miguel Valcárcel on 3/06/23.
//

import XCTest
@testable import The_Reddit

class FeedInteractorTests: XCTestCase {
    var mockBaseService: MockBaseService!
    var mockRepository: RemoteRepositoryProtocol!
    var mockPostsUseCase: PostsUseCaseProtocol!
    var sut: FeedInteractor!
    var mockPresenter: MockPresenter!
    
    override func setUp() {
        super.setUp()
        mockBaseService = MockBaseService()
        mockRepository = MockRepository(service: mockBaseService)
        mockPostsUseCase = PostsUseCase(repository: mockRepository)
        mockPresenter = MockPresenter()
        sut = FeedInteractor(postsUseCase: mockPostsUseCase)
        sut.presenter = mockPresenter
    }
    
    override func tearDown() {
        super.tearDown()
        mockBaseService = nil
        mockRepository = nil
        mockPostsUseCase = nil
        mockPresenter = nil
        sut = nil
    }
    
    func test_fetchPosts_success() {
        // Given
        mockBaseService.mockResponse = [MockService(endpoint: DataConstants.Endpoint.top.url) : .success(jsonFile: "fetchPosts_success")]
        mockPresenter.fetchedPostsSuccessCalled = false
        
        // When
        sut.fetchPosts(after: nil)
        
        // Then
        XCTAssertTrue(mockPresenter.fetchedPostsSuccessCalled)
    }
    
    func test_fetchPosts_failure() {
        // Given
        mockBaseService.mockResponse = [MockService(endpoint: DataConstants.Endpoint.top.url) : .failure(message: "")]
        mockPresenter.fetchedPostsFailureCalled = false
        
        // When
        sut.fetchPosts(after: nil)
        
        // Thne
        XCTAssertTrue(mockPresenter.fetchedPostsFailureCalled)
    }
    
    func test_fetchPosts_noInternetConnection() {
        // Given
        mockBaseService.mockResponse = [MockService(endpoint: DataConstants.Endpoint.top.url) : .notConnectedToInternet]
        mockPresenter.fetchedPostsFailureCalled = false
        
        // When
        sut.fetchPosts(after: nil)
        
        // Thne
        XCTAssertTrue(mockPresenter.fetchedPostsFailureCalled)
    }
    
    //MARK: - MockPresenter
    class MockPresenter: FeedInteractorOutputProtocol {
        var fetchedPostsSuccessCalled: Bool = false
        var fetchedPostsFailureCalled: Bool = false
        
        func fetchedPostsSuccess(posts: [FeedModel.Post], afterId: String) {
            fetchedPostsSuccessCalled = true
        }
        
        func fetchedPostsFailure(errorMessage: String) {
            fetchedPostsFailureCalled = true
        }
    }
}
