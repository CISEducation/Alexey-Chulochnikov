//
//  GHLoginViewControllerTests.m
//  
//
//  Created by Alexey Chulochnikov on 08.08.15.
//
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "GHLoginViewController.h"

@interface GHLoginViewControllerTests : XCTestCase
@property (nonatomic, strong) GHLoginViewController *sut;
@end

@implementation GHLoginViewControllerTests

- (void)setUp {
    [super setUp];
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.sut = [storyboard instantiateInitialViewController];
}

- (void)tearDown {
    self.sut = nil;
    
    [super tearDown];
}

#pragma mark - Load
- (void)testControllerInitFromStoryboardWithIdentifier {
    XCTAssertNotNil(self.sut);
}

- (void)testControllerInitCurrentClass {
    XCTAssertTrue([self.sut isKindOfClass:[GHLoginViewController class]]);
}

#pragma mark - IBOutlets
- (void) testIBOutlets {
    [self.sut view];
    
    XCTAssertNotNil(self.sut.usernameTextField, @"Login view controller username textfield outletd is not connected");
    XCTAssertNotNil(self.sut.passwordTextField, @"Login view controller password textfield outletd is not connected");
    
    XCTAssertNotNil(self.sut.loginButton, @"Login view controller login button outletd is not connected");
}

#pragma mark - IBActions
- (void) testIBActions {
    [self.sut view];
    
    NSArray *actions = [self.sut.loginButton actionsForTarget:self.sut forControlEvent:UIControlEventTouchUpInside];
    XCTAssertTrue([actions containsObject:@"loginButtonPressed"], @"Login view controller login button action is not connected");
    XCTAssertNoThrow([self.sut.loginButton sendActionsForControlEvents:UIControlEventTouchUpInside]);
}

#pragma mark text fields
- (void) testUsernameTextField {
    [self.sut view];
    
    XCTAssertEqual(self.sut.usernameTextField.autocapitalizationType, UITextAutocapitalizationTypeNone);
    XCTAssertEqual(self.sut.usernameTextField.autocorrectionType, UITextAutocorrectionTypeNo);
    XCTAssertEqual(self.sut.usernameTextField.keyboardType, UIKeyboardAppearanceDefault);
}

- (void) testPasswordTextField {
    [self.sut view];
    
    XCTAssertEqual(self.sut.passwordTextField.autocapitalizationType, UITextAutocapitalizationTypeNone);
    XCTAssertEqual(self.sut.passwordTextField.autocorrectionType, UITextAutocorrectionTypeNo);
    XCTAssertEqual(self.sut.passwordTextField.keyboardType, UIKeyboardAppearanceDefault);
    XCTAssertEqual(self.sut.passwordTextField.secureTextEntry, YES);
}

@end
