//
//  ViewController.m
//  Guess Number
//
//  Created by sysadmin on 5/29/18.
//  Copyright © 2018 sysadmin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    int _number;
    int _tries;
    
}


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Send the random number with the current time
    
    
    srandom(time(NULL));
    //Create a random Number
    
    _number = random() % 100 + 1;
    _tries = 0;
    self.tryNumber.text = [NSString stringWithFormat:@"Tries: %d", _tries ];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)checkNumberButton:(id)sender {
    
    int guess = [self.numberShow.text intValue];
    self.tryNumber.text = [NSString stringWithFormat:@"Tries: %d", _tries ];
    _tries+= 1;

    
    if(_number == guess){
        self.guessNumber.text = @"You won the game!";
    }else if (_number < guess){
        self.guessNumber.text = [NSString stringWithFormat:@"The number is less than %d", guess ];
    }else if (_number > guess){
        self.guessNumber.text = [NSString stringWithFormat:@"The number is higher than %d", guess ];
    }
    

    
}

- (IBAction)restButton:(id)sender {
    
    _number = random() % 100 + 1;
    
    self.guessNumber.text = @"Guess a Number";
    self.numberShow.text = @"50";
    _tries = 0;
    self.tryNumber.text = [NSString stringWithFormat:@"Tries: %d", _tries ];
    
    
}

@end
