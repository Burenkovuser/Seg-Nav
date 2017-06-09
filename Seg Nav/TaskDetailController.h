//
//  TaskDetailController.h
//  Seg Nav
//
//  Created by Vasilii on 08.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TaskDetailController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (copy, nonatomic) NSDictionary *selection;
@property (weak, nonatomic) id delegate;


@end
