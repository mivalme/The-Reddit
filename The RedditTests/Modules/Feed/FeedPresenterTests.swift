//
//  FeedPresenterTests.swift
//  The RedditTests
//
//  Created by Miguel Valcárcel on 3/06/23.
//

import XCTest
@testable import The_Reddit

class FeedPresenterTests: XCTestCase {
    var sut: FeedPresenter!
    var mockView: MockView!
    var mockRouter: MockRouter!
    var mockInteractor: MockInteractor!
    
    override func setUp() {
        super.setUp()
        mockView = MockView()
        mockRouter = MockRouter()
        mockInteractor = MockInteractor()
        sut = FeedPresenter()
        sut.view = mockView
        sut.interactor = mockInteractor
        sut.router = mockRouter
    }
    
    override func tearDown() {
        super.tearDown()
        mockView = nil
        mockRouter = nil
        mockInteractor = nil
        sut = nil
    }
    
    func test_viewDidLoad() {
        // Given
        mockInteractor.fetchPostsCalled = false
        
        // When
        sut.viewDidLoad()
        
        // Then
        XCTAssertTrue(mockInteractor.fetchPostsCalled)
    }
    
    func test_reachedEndOfTable() {
        // Given
        sut.fetchedIds = []
        mockInteractor.fetchPostsCalled = false
        
        // When
        sut.reachedEndOfTable()
        
        // Then
        XCTAssertTrue(!sut.fetchedIds.isEmpty)
        XCTAssertTrue(mockInteractor.fetchPostsCalled)
    }
    
    func test_didSelectPost() {
        // Given
        let selectedPost = FeedModel.Post(title: "dummyTitle",
                                          author: "dummyAuthor",
                                          date: "dummyDate",
                                          thumbnail: "dummyThumbnail",
                                          commentsQuantity: 0,
                                          subreddit: "dummySubreddit")
        
        mockRouter.goToPostDetailCalled = false
        
        // When
        sut.didSelectPost(selectedPost: selectedPost)
        
        // Then
        XCTAssertTrue(mockRouter.goToPostDetailCalled)
    }
    
    func test_fetchedPostsSuccess() {
        // Given
        mockView.displayPostsListCalled = false
        
        // When
        sut.fetchedPostsSuccess(posts: [], afterId: "")
        
        // Then
        XCTAssertTrue(mockView.displayPostsListCalled)
    }
    
    func test_fetchedPostsFailure() {
        // Given
        mockView.showErrorAlertCalled = false
        
        // When
        sut.fetchedPostsFailure(errorMessage: "")
        
        // Then
        XCTAssertTrue(mockView.showErrorAlertCalled)
    }
    
    //MARK: - MockView
    class MockView: FeedViewProtocol {
        var displayPostsListCalled: Bool = false
        var showErrorAlertCalled: Bool = false
        
        func displayPostsList(model: [FeedModel.Post]) {
            displayPostsListCalled = true
        }
        
        func showErrorAlert(errorMessage: String) {
            showErrorAlertCalled = true
        }
    }
    
    //MARK: - MockRouter
    class MockRouter: FeedRouterProtocol {
        var goToPostDetailCalled: Bool = false
        
        func goToPostDetail(selectedPost: FeedModel.Post) {
            goToPostDetailCalled = true
        }
    }
    
    //MARK: - MockInteractor
    class MockInteractor: FeedInteractorProtocol {
        var fetchPostsCalled: Bool = false
        
        func fetchPosts(after: String?) {
            fetchPostsCalled = true
        }
    }
}
