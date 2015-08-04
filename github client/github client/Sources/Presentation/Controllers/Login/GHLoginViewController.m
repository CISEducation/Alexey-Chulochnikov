//
//  GHLoginViewController.m
//  github client
//
//  Created by Alexey Chulochnikov on 04.08.15.
//  Copyright © 2015 Alexey Chulochnikov. All rights reserved.
//

#import "GHLoginViewController.h"

@interface GHLoginViewController ()

@end

@implementation GHLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)loginButtonPressed {
    GHGithubAPIController *githubAPIController = [[GHGithubAPIController alloc] initWithUsername:self.usernameTextField.text password:self.passwordTextField.text];
    
    [githubAPIController getUserRepositoriesWithCompletionBlock:^(id responce, NSError *error) {
        if (error) {
            NSLog(@"error occured: %@", error);
        } else {
            NSLog(@"responce: %@", responce);
        }
    }];
}
@end
