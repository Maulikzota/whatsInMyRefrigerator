//
//  productVC.m
//  whatsInMyRefrigerator
//
//  Created by -=fAlC0n=- on 12/11/14.
//  Copyright (c) 2014 -=fAlC0n=-. All rights reserved.
//

#import "productVC.h"

@interface productVC ()

@end

@implementation productVC

@synthesize productTitle;
@synthesize productTitleFromCameraScanner;


- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    self.username = [[NSUserDefaults standardUserDefaults] stringForKey:@"username"];
    NSLog(@"username: %@",self.username);
    NSLog(@"String value %@", productTitleFromCameraScanner);
        productTitle.text = productTitleFromCameraScanner;


    UIDatePicker *pickerDate = [[UIDatePicker alloc]init];
    pickerDate.datePickerMode = UIDatePickerModeDate;
    [pickerDate setMinimumDate: [NSDate date]];
    [self.edate setInputView:pickerDate];
    
    [pickerDate setDate:[NSDate date]];
    [pickerDate addTarget:self action:@selector(updateTime:) forControlEvents:UIControlEventValueChanged];
    [self.edate setInputView:pickerDate];

    //    tap to dismiss
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    [self.view addGestureRecognizer:tap];
    
    
    
}

- (IBAction)updateTime:(id)sender {
    if([self.edate isFirstResponder]){ 
        UIDatePicker *picker = (UIDatePicker*)self.edate.inputView;
        
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateFormat:@"yyyy-MM-dd"];
//        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        NSString *myDateString = [dateFormatter stringFromDate: [picker date]];
        
        self.edate.text = myDateString;
    }
    
}

-(void)dismissKeyboard {
    [self.qty resignFirstResponder];
    [self.qtytype resignFirstResponder];
    [self.productTitle resignFirstResponder];
    [self.edate resignFirstResponder];
}


-(void)updateTextField:(id)sender
{
    UIDatePicker *picker = (UIDatePicker*)self.edate.inputView;
    self.edate.text = [NSString stringWithFormat:@"%@",picker.date];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)submit:(id)sender {
    NSLog(@"Submit button clicked");
}


- (IBAction)addToFav:(id)sender {
}
@end
