//
//  ViewController.h
//  Guess Number
//
//  Created by sysadmin on 5/29/18.
//  Copyright © 2018 sysadmin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *guessNumber;
@property (weak, nonatomic) IBOutlet UITextField *numberShow;
@property (weak, nonatomic) IBOutlet UILabel *tryNumber;


- (IBAction)checkNumberButton:(id)sender;
- (IBAction)restButton:(id)sender;

@end

