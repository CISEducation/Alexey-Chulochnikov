//
//  GHGithubAPIController.m
//  github client
//
//  Created by Alexey Chulochnikov on 04.08.15.
//  Copyright © 2015 Alexey Chulochnikov. All rights reserved.
//

#import "GHGithubAPIController.h"
#import <UAGithubEngine/UAGithubEngine.h>

@implementation GHGithubAPIController

- (instancetype)initWithUsername:(NSString *)username password:(NSString *)password {
    self = [super init];
    
    if (self) {
        self.usernameString = username;
        self.passwordString = password;
    }
    
    return self;
}

- (void)getUserRepositoriesWithCompletionBlock:(void (^)(id responce, NSError *error))responseHandler {
    UAGithubEngine *engine = [[UAGithubEngine alloc] initWithUsername:self.usernameString password:self.passwordString withReachability:YES];
    
    [engine repositoriesWithSuccess:^(id response) {
        responseHandler(response, nil);
    } failure:^(NSError *error) {
        responseHandler(nil, error);
    }];
}

@end
