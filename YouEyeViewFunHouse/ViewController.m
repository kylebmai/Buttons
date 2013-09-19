//
//  ViewController.m
//  ViewFunHouse
//
//  Created by keith Alperin on 4/30/13.
//  Copyright (c) 2013 Mobile Makers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    int x;
    
    BOOL colorImage;
}
@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [_slider addTarget:self action:@selector(sliderChanged) forControlEvents:UIControlEventValueChanged];
    
    colorImage = YES;
    
    x = 0;
}

- (void)sliderChanged
{
    _sliderLabel.text = [NSString stringWithFormat:@"        %.0f", (_slider.value * 100)];
    _slider.continuous = YES;
}


- (IBAction)onOffAction:(id)sender
{
    
    if ([_onOffButton.titleLabel.text isEqualToString:@"ON"])
    {
        [_onOffButton setTitle:@"OFF" forState:UIControlStateNormal];
    }
    else
    {
        [_onOffButton setTitle:@"ON" forState:UIControlStateNormal];
    }
}

- (IBAction)colorizeAction:(id)sender
{
    [_colorizeButton setTitleColor:[UIColor yellowColor] forState:UIControlStateHighlighted];
    
    if (colorImage == YES)
    {
        [_MMLogoImageView setImage:[UIImage imageNamed:@"MobileMakersLogo_black_and_white"]];
        
        colorImage = NO;
    }
    else
    {
        [_MMLogoImageView setImage:[UIImage imageNamed:@"MobileMakersLogo_color"]];
        
        colorImage = YES;
    }

    
}

- (IBAction)mathAction:(id)sender
{
    [_mathButton setTitleColor:[UIColor yellowColor] forState:UIControlStateHighlighted];
    
    int a = [_firstNumber.text intValue];
    int b = [_secondNumber.text intValue];
    int xy = a + b;
    
    _solution.text = [NSString stringWithFormat:@"%d", xy];
}

- (IBAction)moveMeDownAndMakeMeBigger:(id)sender
{
    x += 20;
    
    [_moveMeButton setFrame:CGRectMake(0.0,  _moveMeButton.frame.origin.y + x, 320.0 - x, 50.0)];
    
    [_moveMeButton setBackgroundColor:[UIColor orangeColor]];
    [_moveMeButton setTitleColor:[UIColor yellowColor] forState:UIControlStateHighlighted];
}

- (IBAction)changeMyColorAction:(id)sender
{
    [_changeMyColorButton setTitleColor:[UIColor yellowColor] forState:UIControlStateHighlighted];
    
    float colorCodeR = (float)(arc4random() % 255);
    float colorCodeG = (float)(arc4random() % 255);
    float colorCodeB = (float)(arc4random() % 255);
    
    //Change color using animation
    [UIView animateWithDuration:1.0 animations:^
    {
        [self.view setBackgroundColor:[UIColor colorWithRed:colorCodeR/255.0 green:colorCodeG/255.0 blue:colorCodeB/255.0 alpha:1.0]];
    }
    ];
    
    //[self.view setBackgroundColor:[UIColor colorWithRed:colorCodeR/255.0 green:colorCodeG/255.0 blue:colorCodeB/255.0 alpha:1.0]];
}
@end
