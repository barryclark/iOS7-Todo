//
//  ViewController.m
//  Todo Example App
//
//  Created by Barry Clark on 8/24/13.
//  Copyright (c) 2013 Barry Clark. All rights reserved.
//

#import "ViewController.h"
#import "ItemsDataStore.h"
#import "Item.h"
#import <CoreData/CoreData.h>

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSManagedObjectContext *context = [[ItemsDataStore defaultStore] managedObjectContext];
    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];

    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Item" inManagedObjectContext:context];
    [fetchRequest setEntity:entity];
    
    NSError *error;
    
    NSArray *fetchedObjects = [context executeFetchRequest:fetchRequest error:&error];
    
    for(Item *item in fetchedObjects) {
        NSLog(@"Content: %@",item.content);
    }
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

    //NSLog(@"View Will appear");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    //NSLog(@"View Did appear");
    //NSLog(@"myString again... %@",[[ItemsDataStore defaultStore] myString]);

}
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    //NSLog(@"View Will disappear");
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    
    //NSLog(@"View Did disappear");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.textLabel.text=@"Content";
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}


- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // The table view should not be re-orderable.
    return NO;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        NSLog(@"Delete Item");
    }
}

@end
