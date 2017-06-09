//
//  TaskDetailController.m
//  Seg Nav
//
//  Created by Vasilii on 08.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "TaskDetailController.h"
//#import "TaskListController.h"

@interface TaskDetailController ()

@end

@implementation TaskDetailController


- (void)viewDidLoad {
    [super viewDidLoad];

    self.textView.text = self.selection[@"object"];
    [self.textView becomeFirstResponder];//вызывается клавиатура
}


//Здесь мы настраиваем наше свойство делегата editedSelection с помощью механизма KVC.
- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    if ([self.delegate respondsToSelector:@selector(setEditedSelection:)]) { // конец редактирования
        [self.textView endEditing:YES];
        // подготовка информации о выборе
        NSIndexPath *indexPath = self.selection[@"indexPath"];
        id object = self.textView.text;
        NSDictionary *editedSelection = @{@"indexPath" : indexPath, @"object" : object};
        [self.delegate setValue:editedSelection forKey:@"editedSelection"]; }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
