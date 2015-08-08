//
//  GHGithubAPIControllerTests.m
//  github client
//
//  Created by Alexey Chulochnikov on 06.08.15.
//  Copyright © 2015 Alexey Chulochnikov. All rights reserved.
//

@import XCTest;
#import "GHGithubAPIController.h"

@interface GHGithubAPIControllerTests : XCTestCase
@property (nonatomic, strong) GHGithubAPIController *githubAPIController;
@end

@implementation GHGithubAPIControllerTests

- (void)setUp {
    [super setUp];
    
    self.githubAPIController = [GHGithubAPIController new];
    self.githubAPIController = [self.githubAPIController initWithUsername:@"username" password:@"password"];
}

- (void)tearDown {
    self.githubAPIController = nil;
    
    [super tearDown];
}

- (void) testInitWithUsername {
    XCTAssertNotNil(self.githubAPIController.usernameString);
    XCTAssertNotNil(self.githubAPIController.passwordString);
}

@end
