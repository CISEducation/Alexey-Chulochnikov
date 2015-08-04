//
//  GHGithubAPIController.h
//  github client
//
//  Created by Alexey Chulochnikov on 04.08.15.
//  Copyright © 2015 Alexey Chulochnikov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GHGithubAPIController : NSObject

@property (strong, nonatomic) NSString *usernameString;
@property (strong, nonatomic) NSString *passwordString;

- (instancetype)initWithUsername: (NSString *)username password: (NSString *)password;
- (void)getUserRepositoriesWithCompletionBlock:(void (^)(id responce, NSError *error))responseHandler;

@end
