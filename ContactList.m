//
//  ContactList.m
//  ContactList
//
//  Created by Dave Augerinos on 2017-02-07.
//  Copyright © 2017 Dave Augerinos. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

// Override init to allocate and initialize mutable array
- (instancetype)init
{
    self = [super init];
    if (self) {
        _contactList = [[NSMutableArray alloc] init];
    }
    return self;
}

// Adds new contact to contact array
- (void)addContact:(Contact *)newContact {
    newContact.contactID = [NSString stringWithFormat:@"%lu", (unsigned long)[self.contactList count]];
    [self.contactList addObject:newContact];
}

// Return a contact based on their contact ID (if found)
-(Contact *)showContact:(NSString *)contactID {
    
    Contact *myContact = [[Contact alloc] init];
    
    // iterate through contact list and search for contact based on ID
    for(Contact *currentContact in self.contactList) {
        if([currentContact.contactID isEqualToString:contactID]) {
            myContact = currentContact;
                return myContact;
        }
    }
    
    return nil;
}

                            
// Override description to print out contact list
- (NSString *)description {
    
    NSMutableString *contactString = [[NSMutableString alloc] init];
    
    // iterate through contact list and build contact name and email address string
    for(Contact *currentContact in self.contactList) {
        NSString *appendContact = [NSString stringWithFormat:@"%@: %@ (%@)\n", currentContact.contactID, currentContact.fullName, currentContact.emailAddress];
        [contactString appendString:appendContact];

    }
    
    return contactString;
}

@end
