//
//  BonRevoirViewController.h
//  BonRevoir
//
//  Created by Nanook on 09/05/2014.
//  Copyright (c) 2014 SaveThePlan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BonRevoirViewController : UIViewController {
    
    bool _helloState;

}

@property bool helloState;

// label pour les messages
@property (weak, nonatomic) IBOutlet UILabel *monLabel;

@property (weak, nonatomic) IBOutlet UILabel *errorLabel;
@property (weak, nonatomic) IBOutlet UITextField *nameField;

// bouton d'action
@property (weak, nonatomic) IBOutlet UIButton *actionButton;

// methode sur click de bouton
- (IBAction)clickButton:(id)sender;

- (void)initWithState:(NSString*)username;

@end
