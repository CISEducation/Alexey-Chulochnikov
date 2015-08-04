//
//  GHLoginViewController.h
//  github client
//
//  Created by Alexey Chulochnikov on 04.08.15.
//  Copyright © 2015 Alexey Chulochnikov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <UAGithubEngine/UAGithubEngine.h>
#import "GHGithubAPIController.h"

@interface GHLoginViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

- (IBAction)loginButtonPressed;

@end
