//
//  BonRevoirViewController.m
//  BonRevoir
//
//  Created by Nanook on 09/05/2014.
//  Copyright (c) 2014 SaveThePlan. All rights reserved.
//

#import "BonRevoirViewController.h"

@interface BonRevoirViewController ()

@end

@implementation BonRevoirViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _helloState = TRUE;
    [_errorLabel setText:@""];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickButton:(id)sender {
    if([_nameField.text length] < 1){
        [_errorLabel setText:@"Merci de préciser votre nom"];
        return;
    }
    
    [_errorLabel setText:@""];
    
    [self initWithState:_nameField.text];
    
    _helloState = ! _helloState;
}


- (void) initWithState: (NSString*)username {
    NSString *labelText;
    NSString *buttonTitle;
    UIColor *buttonColor;
    if(_helloState){
        labelText = @"Bonjour %@";
        buttonTitle = @"- Au revoir -";
        buttonColor = [UIColor redColor];
    } else {
        labelText = @"Au revoir %@";
        buttonTitle = @"- Bonjour -";
        buttonColor = [UIColor greenColor];
    }
    
    [_monLabel setText:[NSString stringWithFormat:labelText, username]];
    [_actionButton setTitle:buttonTitle forState:UIControlStateNormal];
    [_actionButton setBackgroundColor:buttonColor];
}


@end
