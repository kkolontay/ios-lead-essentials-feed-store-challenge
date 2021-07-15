//
//  ManagedCache+CoreDataProperties.swift
//  FeedStoreChallenge
//
//  Created by kkolontay on 7/13/21.
//  Copyright © 2021 Essential Developer. All rights reserved.
//
//

import Foundation
import CoreData

extension ManagedCache {
	@NSManaged var timestamp: Date
	@NSManaged var feed: NSOrderedSet
}
