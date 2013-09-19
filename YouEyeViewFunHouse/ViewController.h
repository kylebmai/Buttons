//
//  ViewController.h
//  ViewFunHouse
//
//  Created by keith Alperin on 4/30/13.
//  Copyright (c) 2013 Mobile Makers. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (weak, nonatomic) IBOutlet UIButton *changeMyColorButton;
@property (weak, nonatomic) IBOutlet UIButton *moveMeButton;
@property (weak, nonatomic) IBOutlet UIButton *mathButton;
@property (weak, nonatomic) IBOutlet UIButton *colorizeButton;
@property (weak, nonatomic) IBOutlet UIButton *onOffButton;
@property (weak, nonatomic) IBOutlet UILabel *firstNumber;
@property (weak, nonatomic) IBOutlet UILabel *secondNumber;
@property (weak, nonatomic) IBOutlet UILabel *solution;
@property (weak, nonatomic) IBOutlet UIImageView *MMLogoImageView;
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
@property (weak, nonatomic) IBOutlet UISlider *slider;





- (IBAction)onOffAction:(id)sender;

- (IBAction)colorizeAction:(id)sender;

- (IBAction)mathAction:(id)sender;

- (IBAction)moveMeDownAndMakeMeBigger:(id)sender;

- (IBAction)changeMyColorAction:(id)sender;


@end
