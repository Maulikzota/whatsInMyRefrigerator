//
//  productInfo.h
//  whatsInMyRefrigerator
//
//  Created by -=fAlC0n=- on 12/11/14.
//  Copyright (c) 2014 -=fAlC0n=-. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface productInfo : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *productTitle;
@property (weak, nonatomic) IBOutlet UITextField *qty;
@property (weak, nonatomic) IBOutlet UITextField *qtytype;
@property (weak, nonatomic) IBOutlet UITextField *pdate;
@property (weak, nonatomic) IBOutlet UITextField *edate;

-(IBAction)submit:(id)sender;

@end
