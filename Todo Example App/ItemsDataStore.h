//
//  ItemsDataStore.h
//  Todo Example App
//
//  Created by Barry Clark on 8/24/13.
//  Copyright (c) 2013 Barry Clark. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ItemsDataStore : NSObject

@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

@property NSString *myString;

+ (ItemsDataStore *)defaultStore;

@end
