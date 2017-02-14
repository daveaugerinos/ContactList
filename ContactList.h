//
//  ContactList.h
//  ContactList
//
//  Created by Dave Augerinos on 2017-02-07.
//  Copyright © 2017 Dave Augerinos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@class Contact;

@interface ContactList : NSObject

// Properties
@property (nonatomic) NSMutableArray *contactList;

// Methods
-(void)addContact:(Contact *)newContact;
-(Contact *)showContact:(NSString *)contactID;


@end
